// server.js

import express from 'express';
import mysql from 'mysql';
import multer from 'multer';
import path from 'path';

import dbconf from './conf.js';

const app = express();
const port = 3010;

const connection = mysql.createConnection(dbconf);

connection.connect((err) => {
  if (err) {
    console.error('MySQL 연결 실패:', err);
  } else {
    console.log('MySQL 연결 성공');
  }
});

// 이미지 업로드를 위한 설정
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, 'uploads/');
  },
  filename: (req, file, cb) => {
    const ext = path.extname(file.originalname);
    cb(null, Date.now() + ext);
  },
});

const upload = multer({ storage });

// 이미지 업로드 및 데이터베이스 업데이트
app.post('/images/:menuId', upload.single('image'), (req, res) => {
  const menuId = req.params.menuId;
  const imageUrl = `/images/${req.file.filename}`;

  // MySQL에서 이미지 URL 업데이트
  connection.query('UPDATE CoffeeMenu SET Picture = ? WHERE MenuID = ?', [imageUrl, menuId], (error) => {
    if (error) {
      console.error('쿼리 실행 중 오류:', error);
      res.status(500).send('데이터베이스 업데이트 중 오류 발생');
    } else {
      res.json({ imageUrl });
    }
  });
});

// 모든 커피 메뉴 조회
app.get('/coffee', (req, res) => {
  connection.query('SELECT * FROM CoffeeMenu', (error, results) => {
    if (error) {
      console.error('쿼리 실행 중 오류:', error);
      res.status(500).send('데이터베이스 조회 중 오류 발생');
    } else {
      res.json(results);
    }
  });
});

// 특정 커피 메뉴 조회
app.get('/coffee/:id', (req, res) => {
  const menuId = req.params.id;

  // 커피 메뉴 정보 조회
  connection.query('SELECT * FROM CoffeeMenu WHERE MenuID = ?', [menuId], (error, results) => {
    if (error) {
      console.error('쿼리 실행 중 오류:', error);
      res.status(500).send('데이터베이스 조회 중 오류 발생');
    } else if (results.length === 0) {
      res.status(404).send('커피 메뉴를 찾을 수 없습니다.');
    } else {
      const coffeeMenu = results[0];

      // 알러지 정보 조회
      connection.query(
        'SELECT AllergyName FROM CoffeeAllergyMapping AS CAM JOIN Allergies AS A ON CAM.AllergyID = A.AllergyID WHERE MenuID = ?',
        [menuId],
        (error, allergyResults) => {
          if (error) {
            console.error('쿼리 실행 중 오류:', error);
            res.status(500).send('알러지 정보 조회 중 오류 발생');
          } else {
            coffeeMenu.allergies = allergyResults.map((row) => row.AllergyName);

            // 영양 정보 조회
            connection.query(
              'SELECT NutrientName FROM CoffeeNutrientMapping AS CNM JOIN Nutrients AS N ON CNM.NutrientID = N.NutrientID WHERE MenuID = ?',
              [menuId],
              (error, nutrientResults) => {
                if (error) {
                  console.error('쿼리 실행 중 오류:', error);
                  res.status(500).send('영양 정보 조회 중 오류 발생');
                } else {
                  coffeeMenu.nutrients = nutrientResults.map((row) => row.NutrientName);

                  // 최종 결과 전송
                  res.json(coffeeMenu);
                }
              }
            );
          }
        }
      );
    }
  });
});

// 이미지 제공
app.use('/images', express.static('uploads'));

app.listen(port, () => {
  console.log(`서버 실행됨 (port ${port})`);
});
