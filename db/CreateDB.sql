-- 기존 데이터베이스가 있다면 삭제
DROP DATABASE IF EXISTS CoffeeDB;

-- 데이터베이스 생성
CREATE DATABASE CoffeeDB;

-- 사용할 데이터베이스 선택
USE CoffeeDB;

-- 알러지 테이블 생성
CREATE TABLE Allergies (
    AllergyID INT AUTO_INCREMENT PRIMARY KEY,
    AllergyName VARCHAR(50) NOT NULL
);

-- 예시 알러지 데이터 삽입
INSERT INTO Allergies (AllergyName) VALUES 
    ('우유'),
    ('대두'),
    ('밀'),
    ('땅콩'),
    ('난류'),
    ('오징어'),
    ('토마토'),
    ('복숭아');

-- 영양성분 테이블 생성
CREATE TABLE Nutrients (
    NutrientID INT AUTO_INCREMENT PRIMARY KEY,
    NutrientName VARCHAR(50) NOT NULL
);

-- 예시 영양성분 데이터 삽입
INSERT INTO Nutrients (NutrientName) VALUES 
    ('칼로리'),
    ('당류'),
    ('단백질'),
    ('나트륨'),
    ('포화지방'),
    ('카페인');

-- 커피 메뉴 테이블 생성
CREATE TABLE CoffeeMenu (
    MenuID INT AUTO_INCREMENT PRIMARY KEY,
    KoreanName VARCHAR(50) NOT NULL,
    EnglishName VARCHAR(50) NOT NULL,
    Price INT NOT NULL,
    Description TEXT,
    Picture BLOB,
    AllergyID INT,
    NutrientID INT,
    FOREIGN KEY (AllergyID) REFERENCES Allergies(AllergyID),
    FOREIGN KEY (NutrientID) REFERENCES Nutrients(NutrientID)
);


-- 알러지와 커피 메뉴의 N:M 관계를 나타내는 연결 테이블
CREATE TABLE CoffeeAllergyMapping (
    MenuID INT,
    AllergyID INT,
    PRIMARY KEY (MenuID, AllergyID),
    FOREIGN KEY (MenuID) REFERENCES CoffeeMenu(MenuID),
    FOREIGN KEY (AllergyID) REFERENCES Allergies(AllergyID)
);

-- 영양성분과 커피 메뉴의 N:M 관계를 나타내는 연결 테이블
CREATE TABLE CoffeeNutrientMapping (
    MenuID INT,
    NutrientID INT,
    PRIMARY KEY (MenuID, NutrientID),
    FOREIGN KEY (MenuID) REFERENCES CoffeeMenu(MenuID),
    FOREIGN KEY (NutrientID) REFERENCES Nutrients(NutrientID)
);
