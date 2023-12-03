
-- 알러지 더미 데이터 삽입
INSERT INTO Allergies (AllergyName) VALUES 
    ('우유'),
    ('대두'),
    ('밀'),
    ('땅콩'),
    ('난류'),
    ('오징어'),
    ('토마토'),
    ('복숭아');

-- 영양성분 더미 데이터 삽입
INSERT INTO Nutrients (NutrientName) VALUES 
    ('칼로리'),
    ('당류'),
    ('단백질'),
    ('나트륨'),
    ('포화지방'),
    ('카페인');

-- 커피 메뉴 더미 데이터 삽입
-- 알러지와 커피 메뉴의 관계 삽입
INSERT INTO CoffeeMenu (KoreanName, EnglishName, Price, Description, Picture, AllergyID, NutrientID) VALUES 
    ('아메리카노', 'Americano', 3000, '순수한 에스프레소와 물이 만나 더욱 깊어진 풍미', NULL, NULL, 6),
    ('카페라떼', 'Cafe Latte', 4500, '에스프레소에 부드러운 스팀밀크를 더한 커피', NULL, 1, 2),
    ('마끼아또', 'Macchiato', 4000, '에스프레소 위에 플랫화이트 크림이 얹어진 커피', NULL, NULL, 4);

-- 예시 커피 메뉴 추가
INSERT INTO CoffeeMenu (KoreanName, EnglishName, Price, Description, Picture, AllergyID, NutrientID)
VALUES ('초코라떼', 'Choco Latte', 5000, '달콤한 초콜릿와과 촉촉한 우유의 조화', '/images/coffee1.jpg', 1, 1);

-- 알러지와 커피 메뉴의 관계 삽입
INSERT INTO CoffeeAllergyMapping (MenuID, AllergyID) VALUES 
    (1, 1), -- 아메리카노에는 우유 알러지가 없음
    (2, 1), -- 카페라떼에는 우유 알러지 포함
    (3, 1), -- 마끼아또에는 우유 알러지가 없음
    (2, 2), -- 카페라떼에는 대두 알러지 포함
    (3, 4); -- 마끼아또에는 땅콩 알러지 포함

-- 영양성분과 커피 메뉴의 관계 삽입
INSERT INTO CoffeeNutrientMapping (MenuID, NutrientID) VALUES 
    (1, 6), -- 아메리카노의 카페인 함량
    (2, 6), -- 카페라떼의 카페인 함량
    (3, 6), -- 마끼아또의 카페인 함량
    (1, 1), -- 아메리카노의 칼로리 함량
    (2, 2), -- 카페라떼의 당류 함량
    (3, 4); -- 마끼아또의 나트륨 함량
