-- '콜드 브루 커피' 카테고리의 메뉴 추가 쿼리

INSERT INTO Menu (CategoryID, KoreanMenuName, EnglishMenuName, Description, ImageURL) 
VALUES 
(1, '나이트로 바닐라 크림', 'Nitro Vanilla Cream', '부드러운 목넘김의 나이트로 커피와 바닐라 크림의 매력을 한번에 느껴보세요!', 'images/나이트로 바닐라 크림.jpg'),
(1, '나이트로 콜드 브루', 'Nitro Cold Brew', '나이트로 커피 정통의 캐스케이딩과 부드러운 콜드 크레마! 부드러운 목 넘김과 완벽한 밸런스에 커피 본연의 단맛을 경험할 수 있습니다.', 'images/나이트로 콜드 브루.jpg'),
(1, '돌체 콜드 브루', 'Dolce Cold Brew', '무더운 여름철, 동남아 휴가지에서 즐기는 커피를 떠오르게 하는 스타벅스 음료의 베스트 x 베스트 조합인 돌체 콜드 브루를 만나보세요!', 'images/돌체 콜드 브루.jpg'),
(1, '리저브 나이트로', 'Reserve Nitro', '나이트로 커피 정통의 캐스케이딩과 부드러운 콜드 크레마!', 'images/리저브 나이트로.jpg'),
(1, '리저브 콜드 브루', 'Reserve Cold Brew', '리저브 커피 마스터의 정성으로 차갑게 추출한 깊고 부드러운 풍미의 커피', 'images/리저브 콜드 브루.jpg'),
(1, '민트 콜드 브루', 'Mint Cold Brew', '상쾌한 민트향 시럽과 잘게 갈린 얼음이 어우러져 시원함이 강렬하게 느껴지는 리저브만의 콜드 브루 음료', 'images/민트 콜드 브루.jpg'),
(1, '바닐라 크림 콜드 브루', 'Vanilla Cream Cold Brew', '콜드 브루에 더해진 바닐라 크림으로 깔끔하면서 달콤한 콜드 브루를 새롭게 즐길 수 있는 음료입니다.', 'images/바닐라 크림 콜드 브루.jpg'),
(1, '시그니처 더 블랙 콜드 브루', 'Signature The Black Cold Brew', '콜드 브루 전용 원두를 차가운 물로 매장에서 직접 추출하여 부드럽고 진한 풍미의 콜드브루를 언제 어디서나 편하게 즐겨보세요', 'images/시그니처 더 블랙 콜드 브루.jpg'),
(1, '여수 윤슬 헤이즐넛 콜드브루', 'Yeosu Yoonseul Hazelnut Cold Brew', '햇빛이나 달빛에 비치어 반짝이는 잔물결이라는 "윤슬"을 형상화한 커피', 'images/여수 윤슬 헤이즐넛 콜드브루.jpg'),
(1, '오트 콜드 브루', 'Oat Cold Brew', '콜드 브루의 풍미와 깔끔한 오트음료(식물성 대체유)가 어우러진 달콤 고소한 라떼. 식물성 대체유를 사용해 모든 고객이 부담없이 즐길 수 있는 콜드 브루 음료', 'images/오트 콜드 브루.jpg'),
(1, '제주 비자림 콜드 브루', 'Jeju Bijarim Cold Brew', '제주 천년의 숲 비자림을 연상시키는 음료로 제주 유기농 말차와 콜드 브루가 조화로운 제주 특화 콜드 브루 음료', 'images/제주 비자림 콜드 브루.jpg'),
(1, '콜드 브루', 'Cold Brew', '콜드 브루 전용 원두를 차가운 물로 추출하여 한정된 양만 제공됩니다. 깊은 풍미의 새로운 커피 경험을 즐겨보세요.', 'images/콜드 브루.jpg'),
(1, '콜드 브루 몰트', 'Cold Brew Malt', '[리저브 전용음료] 리저브 콜드 브루, 바닐라 아이스크림, 몰트가 블렌딩된 리저브만의 쉐이크', 'images/콜드 브루 몰트.jpg'),
(1, '콜드 브루 플로트', 'Cold Brew Float', '[리저브 전용음료] 리저브 콜드 브루 위에 녹아 내리는 한 스쿱의 바닐라 아이스크림', 'images/콜드 브루 플로트.jpg');

-- '콜드 브루 커피' 카테고리의 메뉴 영양 정보 추가 쿼리
INSERT INTO NutritionInformation (MenuID, Calories, Sugar, Protein, Sodium, SaturatedFat, Caffeine) 
VALUES 
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '나이트로 바닐라 크림'), 80, 10, 1, 40, 2, 232),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '나이트로 콜드 브루'), 5, 0, 0, 5, 0, 245),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '돌체 콜드 브루'), 265, 29, 8, 130, 9, 155),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '리저브 나이트로'), 5, 0, 0, 0, 0, 190),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '리저브 콜드 브루'), 5, 0, 0, 0, 0, 190),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '민트 콜드 브루'), 100, 23, 0, 0, 0, 415),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '바닐라 크림 콜드 브루'), 125, 11, 3, 58, 6, 155),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '시그니처 더 블랙 콜드 브루'), 25, 0, 0, 50, 0, 680),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '여수 윤슬 헤이즐넛 콜드브루'), 245, 27, 5, 85, 9, 53),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '오트 콜드 브루'), 120, 14, 1, 95, 0.3, 65),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '제주 비자림 콜드 브루'), 360, 39, 11, 140, 8, 305),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '콜드 브루'), 5, 0, 0, 11, 0, 155),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '콜드 브루'), 5, 0, 0, 25, 0, 360),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '콜드 브루 몰트'), 505, 41, 7, 150, 20, 190),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '콜드 브루 플로트'), 225, 18, 3, 70, 10, 190);

-- '브루드 커피' 카테고리의 메뉴 추가 쿼리
INSERT INTO Menu (CategoryID, KoreanMenuName, EnglishMenuName, Description, ImageURL) 
VALUES 
((SELECT CategoryID FROM Category WHERE CategoryName = '브루드 커피'), '아이스 커피', 'Iced Coffee', '케냐, 하우스 블렌드 등 약간의 산미가 있는 커피를 드립 방식으로 추출한 후 얼음과 함께 제공하는 커피입니다. 아이스 커피로 적합한 프리미엄 원두를 이용하여 깔끔하고 상큼한 맛을 느끼실 수 있습니다.', 'images/아이스 커피.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '브루드 커피'), '오늘의 커피', 'Today''s Coffee', '시즌에 어울리는 원두 종류를 선정하여 신선하게 브루드(Brewed)되어 제공되는 드립커피로, 원두 커피의 풍부한 맛과 향을 따뜻하게 즐기실 수 있습니다.', 'images/오늘의 커피.jpg');

-- 메뉴에 대한 영양 정보 추가 쿼리
INSERT INTO NutritionInformation (MenuID, Calories, Sugar, Protein, Sodium, SaturatedFat, Caffeine) 
VALUES 
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 커피'), 5, 0, 0, 10, 0, 140),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '오늘의 커피'), 5, 0, 0, 15, 0, 260);


-- '에스프레소' 카테고리의 메뉴 추가
INSERT INTO Menu (CategoryID, KoreanMenuName, EnglishMenuName, Description, ImageURL)
VALUES 
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '더블 에스프레소 크림 라떼', 'Double Espresso Cream Latte', '달콤한 바닐라와 진한 에스프레소 풍미가 돋보이는 음료\n음료 위 커피 크림이 입안을 부드럽게 감싸며 진한 커피와 커피 칩이 더욱 깊은 커피 향을 느끼게 해주는 음료', 'images/더블 에스프레소 크림 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 더블 에스프레소 크림 라떼', 'Iced Double Espresso Cream Latte', '달콤한 바닐라와 진한 에스프레소 풍미가 돋보이는 음료\n음료 위 커피 크림이 입안을 부드럽게 감싸며 진한 커피와 커피 칩이 더욱 깊은 커피 향을 느끼게 해주는 음료', 'images/아이스 더블 에스프레소 크림 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 토피 넛 라떼', 'Iced Toffee Nut Latte', '스타벅스의 겨울 시그니처 음료\n버터 향이 은은하게 느껴지는 토피와 고소한 견과류의 풍미, 진한 에스프레소가 어우러진 크리스마스 시즌 음료', 'images/아이스 토피 넛 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '토피 넛 라떼', 'Toffee Nut Latte', '스타벅스의 겨울 시그니처 음료\n버터 향이 은은하게 느껴지는 토피와 고소한 견과류의 풍미, 진한 에스프레소가 어우러진 크리스마스 시즌 음료', 'images/토피 넛 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '에스프레소 콘 파나', 'Espresso Con Panna', '신선한 에스프레소 샷에 풍부한 휘핑크림을 얹은 커피 음료로서, 뜨거운 커피의 맛과 차갑고 달콤한 생크림의 맛을 같이 즐길 수 있는 커피 음료', 'images/에스프레소 콘 파나.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '에스프레소 마키아또', 'Espresso Macchiato', '신선한 에스프레소 샷에 우유 거품을 살짝 얹은 커피 음료로써, 강렬한 에스프레소의 맛과 우유의 부드러움을 같이 즐길 수 있는 커피 음료', 'images/에스프레소 마키아또.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 카페 아메리카노', 'Iced Cafe Americano', '진한 에스프레소에 시원한 정수물과 얼음을 더하여 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽고 시원하게 즐길 수 있는 커피', 'images/아이스 카페 아메리카노.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '카페 아메리카노', 'Cafe Americano', '진한 에스프레소와 뜨거운 물을 섞어 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽게 잘 느낄 수 있는 커피', 'images/카페 아메리카노.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 카라멜 마키아또', 'Iced Caramel Macchiato', '향긋한 바닐라 시럽과 시원한 우유와 얼음을 넣고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료', 'images/아이스 카라멜 마키아또.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '카라멜 마키아또', 'Caramel Macchiato', '향긋한 바닐라 시럽과 따뜻한 스팀 밀크 위에 풍성한 우유 거품을 얹고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료', 'images/카라멜 마키아또.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 카푸치노', 'Iced Cappuccino', '풍부하고 진한 에스프레소에 신선한 우유와 우유 거품이 얼음과 함께 들어간 시원하고 부드러운 커피 음료', 'images/아이스 카푸치노.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '카푸치노', 'Cappuccino', '풍부하고 진한 에스프레소에 따뜻한 우유와 벨벳 같은 우유 거품이 1:1 비율로 어우러져 마무리된 커피 음료', 'images/카푸치노.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '더 그린 쑥 크림 라떼', 'The Green Ssuk Cream Latte', '은은한 쑥과 곡물에 블론드 샷이 어우러져 고소하고 부드러운 라떼\n달콤한 쑥 폼이 올라가 부드럽게 즐기는 아인슈페너 음료\n*더북한산,경동1960,대구종로고택 매장에서만 판매하는 음료입니다.', 'images/더 그린 쑥 크림 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '라벤더 카페 브레베', 'Lavender Cafe Breve', '진한 리저브 에스프레소 샷과 은은한 라벤더향이 고급스럽게 어우러진 부드럽고 세련된 풍미의 라벤더 카페 브레베', 'images/라벤더 카페 브레베.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '바닐라 빈 라떼', 'Vanilla Bean Latte', '리저브만을 위한 바닐라 빈 시럽이 부드럽게 어우러진 카페 라떼', 'images/바닐라 빈 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '사케라또 비안코 오버 아이스', 'Sakeraito Bianco Over Ice', '얼음과 같이 쉐이킹하여 차가워진 진한 리저브 에스프레소와 하우스 메이드 크림이 어우러진 달콤한 음료', 'images/사케라또 비안코 오버 아이스.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '스타벅스 1호점 바닐라 빈 라떼', 'Starbucks 1st Store Vanilla Bean Latte', '한국 스타벅스 1호점인 이대R점을 상징하는 리저브 바닐라 빈 라떼.', 'images/스타벅스 1호점 바닐라 빈 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '스타벅스 1호점 카페 라떼', 'Starbucks 1st Store Caffe Latte', '시애틀 1호점을 기념하는 \'파이크 플레이스 로스트\'VIA와 번트 카라멜 파우더로', 'images/스타벅스 1호점 카페 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '스타벅스 돌체 라떼', 'Starbucks Dolce Latte', '만든 리저브 로고는 부드러운 우유 폼에 달콤쌉쌀한 풍미를 선사.', 'images/스타벅스 돌체 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 더 그린 쑥 크림 라떼', 'Iced The Green Ssuk Cream Latte', '"은은한 쑥과 곡물에 블론드 샷이 어우러져 고소하고 부드러운 라떼\n달콤한 쑥 폼이 올라가 부드럽게 즐기는 아인슈페너 음료\n*더북한산,경동1960,대구종로고택 매장에서만 판매하는 음료입니다."', 'images/아이스 더 그린 쑥 크림 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 라벤더 카페 브레베', 'Iced Lavender Cafe Breve', '진한 리저브 에스프레소 샷과 은은한 라벤더향이 고급스럽게 어우러진 부드럽고 세련된 풍미의 라벤더 카페 브레베', 'images/아이스 라벤더 카페 브레베.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 바닐라 빈 라떼', 'Iced Vanilla Bean Latte', '리저브만을 위한 바닐라 빈 시럽이 부드럽게 어우러진 카페 라떼', 'images/아이스 바닐라 빈 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 스타벅스 1호점 바닐라 빈 라떼', 'Iced Starbucks 1st Store Vanilla Bean Latte', '"한국 스타벅스 1호점인 이대R점을 상징하는 리저브 바닐라 빈 라떼.\n시애틀 1호점을 기념하는 \'파이크 플레이스 로스트\'VIA와 번트 카라멜 파우더로\n만든 리저브 로고는 부드러운 밀크 콜드폼에 달콤쌉쌀한 풍미를 선사."', 'images/아이스 스타벅스 1호점 바닐라 빈 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 스타벅스 1호점 카페 라떼', 'Iced Starbucks 1st Store Caffe Latte', '스타벅스의 다른 커피 음료보다 더욱 깊은 커피의 맛과 향에 깔끔한 무지방 우유와 부드러운 돌체 시럽이 들어간 음료로 달콤하고 진한 커피 라떼', 'images/아이스 스타벅스 1호점 카페 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 스타벅스 돌체 라떼', 'Iced Starbucks Dolce Latte', '풍부하고 진한 농도의 에스프레소가 시원한 우유와 얼음을 만나 고소함과 시원함을 즐길 수 있는 대표적인 커피 라떼', 'images/아이스 스타벅스 돌체 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 카페 라떼', 'Iced Caffe Latte', '풍부하고 진한 농도의 에스프레소가 시원한 우유와 얼음을 만나 고소함과 시원함을 즐길 수 있는 대표적인 커피 라떼', 'images/아이스 카페 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '카페 라떼', 'Caffe Latte', '풍부하고 진한 에스프레소가 신선한 스팀 밀크를 만나 부드러워진 커피 위에 우유 거품을 살짝 얹은 대표적인 커피 라떼', 'images/카페 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 카페 모카', 'Iced Cafe Mocha', '진한 초콜릿 모카 시럽과 풍부한 에스프레소를 신선한 우유 그리고 얼음과 섞어 휘핑크림으로 마무리한 음료로 진한 에스프레소와 초콜릿 맛이 어우러진 커피', 'images/아이스 카페 모카.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 화이트 초콜릿 모카', 'Iced White Chocolate Mocha', '달콤하고 부드러운 화이트 초콜릿 시럽과 에스프레소를 신선한 우유 그리고 얼음과 섞어 휘핑크림으로 마무리한 음료로 달콤함과 강렬한 에스프레소가 부드럽게 어우러진 커피', 'images/아이스 화이트 초콜릿 모카.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '카페 모카', 'Cafe Mocha', '진한 초콜릿 모카 시럽과 풍부한 에스프레소를 스팀 밀크와 섞어 휘핑크림으로 마무리한 음료로 진한 에스프레소와 초콜릿 맛이 어우러진 커피', 'images/카페 모카.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '클래식 민트 모카', 'Classic Mint Mocha', '스타벅스의 클래식인 페퍼민트 모카를 떠올리게 하는 리저브만의 에스프레소 음료. 오트음료(식물성 대체유)의 고소함과 다크 초콜릿의 쌉쌀함이 특징인 음료.', 'images/클래식 민트 모카.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '화이트 초콜릿 모카', 'White Chocolate Mocha', '달콤하고 부드러운 화이트 초콜릿 시럽과 에스프레소를 스팀 밀크와 섞어 휘핑크림으로 마무리한 음료로 달콤함과 강렬한 에스프레소가 부드럽게 어우러진 커피', 'images/화이트 초콜릿 모카.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '바닐라 플랫 화이트', 'Vanilla Flat White', '바닐라 플랫 화이트는 진하고 고소한 리스트레토 샷과 바닐라 시럽 그리고 스팀 밀크로 즐기는 진한 커피 라떼 입니다.', 'images/바닐라 플랫 화이트.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '바닐라 스타벅스 더블 샷', 'Vanilla Starbucks Double Shot', '신선하게 제조된 더블 샷 믹스에 바닐라 시럽을 넣고 에스프레소 샷, 얼음이 어우러져 핸드 쉐이킹한 음료', 'images/바닐라 스타벅스 더블 샷.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '블론드 바닐라 더블 샷 마키아또', 'Blonde Vanilla Double Shot Macchiato', '블론드 에스프레소 2샷에 흑당 시럽과 바닐라 크림이 부드럽고 달콤하게 어우러진 마키아또 타입의 음료를 즐겨 보세요!', 'images/블론드 바닐라 더블 샷 마키아또.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '사케라또 아포가토', 'Sakeralto Affogato', '민트 잎과 쉐이킹한 리저브 에스프레소를 바닐라 아이스크림에 부어 프레쉬함과 달콤함이 조화롭게 퍼지는 리저브 만의 디저트 음료', 'images/사케라또 아포가토.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '스파클링 시트러스 에스프레소', 'Sparkling Citrus Espresso', '리저브 에스프레소에 상큼한 레몬과 진저에일을 더해 청량감과 시트러스 풍미를 가득 선사하는 커피 음료', 'images/스파클링 시트러스 에스프레소.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '아이스 블론드 바닐라 더블 샷 마키아또', 'Iced Blonde Vanilla Double Shot Macchiato', '블론드 에스프레소 2샷에 흑당 시럽과 바닐라 크림이 부드럽고 달콤하게 어우러진 마키아또 타입의 음료를 즐겨 보세요!', 'images/아이스 블론드 바닐라 더블 샷 마키아또.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '에스프레소', 'Espresso', '스타벅스 에스프레소는 향기로운 크레마 층과 바디 층, 하트 층으로 이루어져 있으며, 입안 가득히 커피와 달콤한 카라멜 향이 느껴지는 커피 음료', 'images/에스프레소.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '커피 스타벅스 더블 샷', 'Coffee Starbucks Double Shot', '신선하게 제조된 더블 샷 믹스에 클래식 시럽을 넣고 에스프레소 샷, 얼음이 어우러져 핸드 쉐이킹한 음료', 'images/커피 스타벅스 더블 샷.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '클래식 아포가토', 'Classic Affogato', '[리저브R 매장 전용음료] 리저브 에스프레소 투 샷이 바닐라 아이스크림과 진하게 어우러진 정통 아포가토', 'images/클래식 아포가토.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '에스프레소'), '헤이즐넛 스타벅스 더블 샷', 'Hazelnut Starbucks Double Shot', '신선하게 제조된 더블 샷 믹스에 헤이즐넛 시럽을 넣고 에스프레소 샷, 얼음이 어우러져 핸드 쉐이킹한 음료', 'images/헤이즐넛 스타벅스 더블 샷.jpg');

-- 메뉴에 대한 영양 정보 추가
INSERT INTO NutritionInformation (MenuID, Calories, Sugar, Protein, Sodium, SaturatedFat, Caffeine) 
VALUES 
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '더블 에스프레소 크림 라떼'), 270, 26, 9, 140, 10, 76),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 더블 에스프레소 크림 라떼'), 220, 21, 6, 95, 8, 76),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 토피 넛 라떼'), 240, 27, 5, 180, 8, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '토피 넛 라떼'), 325, 34, 10, 250, 11, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '에스프레소 콘 파나'), 30, 1, 0, 0, 1.5, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '에스프레소 마키아또'), 10, 0, 1, 0, 0, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 카페 아메리카노'), 10, 0, 1, 5, 0, 150),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '카페 아메리카노'), 10, 0, 1, 5, 0, 150),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 카라멜 마키아또'), 190, 22, 6, 110, 4.6, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '카라멜 마키아또'), 200, 22, 8, 130, 5, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 카푸치노'), 110, 9, 6, 90, 3.5, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '카푸치노'), 110, 8, 6, 70, 3, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '더 그린 쑥 크림 라떼'), 365, 33, 11, 570, 11, 170),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '라벤더 카페 브레베'), 400, 30, 8, 140, 22, 105),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '바닐라 빈 라떼'), 245, 27, 9, 150, 6, 210),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '사케라또 비안코 오버 아이스'), 270, 14, 3, 45, 18, 315),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '스타벅스 1호점 바닐라 빈 라떼'), 234, 27, 9, 150, 6, 210),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '스타벅스 1호점 카페 라떼'), 191, 15, 10, 150, 6, 210),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '스타벅스 돌체 라떼'), 255, 39, 12, 190, 2.6, 150),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 더 그린 쑥 크림 라떼'), 325, 28, 9, 490, 10, 170),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 라벤더 카페 브레베'), 335, 27, 6, 110, 18, 105),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 바닐라 빈 라떼'), 155, 20, 5, 75, 2.9, 210),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 스타벅스 1호점 바닐라 빈 라떼'), 159, 21, 6, 90, 2.9, 210),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 스타벅스 1호점 카페 라떼'), 117, 9, 6, 100, 3.2, 210),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 스타벅스 돌체 라떼'), 230, 35, 10, 145, 2.5, 150),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 카페 라떼'), 110, 8, 6, 75, 3.5, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '카페 라떼'), 180, 13, 10, 115, 5, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 카페 모카'), 250, 21, 7, 70, 8, 95),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 화이트 초콜릿 모카'), 335, 41, 8, 160, 8, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '카페 모카'), 290, 25, 10, 105, 9, 95),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '클래식 민트 모카'), 335, 43, 4, 200, 0.7, 210),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '화이트 초콜릿 모카'), 405, 47, 12, 230, 11, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '바닐라 플랫 화이트'), 220, 23, 9, 130, 5, 260),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '바닐라 스타벅스 더블 샷'), 125, 14, 2, 30, 4.5, 150),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '블론드 바닐라 더블 샷 마키아또'), 315, 31, 8, 130, 12, 170),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '스파클링 시트러스 에스프레소'), 65, 15, 0, 5, 0, 105),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '사케라또 아포가토'), 290, 30, 4, 70, 10, 210),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 블론드 바닐라 더블 샷 마키아또'), 195, 22, 5, 65, 6, 170),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '에스프레소'), 5, 0, 0, 0, 0, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '커피 스타벅스 더블 샷'), 125, 14, 3, 28.5, 5, 150),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '클래식 아포가토'), 240, 18, 4, 70, 10, 210),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '헤이즐넛 스타벅스 더블 샷'), 125, 14, 3, 28.5, 5, 150);


INSERT INTO Menu (CategoryID, KoreanMenuName, EnglishMenuName, Description, ImageURL)
VALUES 
((SELECT CategoryID FROM Category WHERE CategoryName = '프라푸치노'), '에스프레소 프라푸치노', 'Espresso Frappuccino', '에스프레소 샷의 강렬함과 약간의 단맛이 어우러진 프라푸치노', 'images/에스프레소 프라푸치노.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '프라푸치노'), '자바 칩 프라푸치노', 'Java Chip Frappuccino', '커피, 모카 소스, 진한 초콜릿 칩이 입안 가득 느껴지는 스타벅스에서만 맛볼 수 있는 프라푸치노', 'images/자바 칩 프라푸치노.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '프라푸치노'), '카라멜 프라푸치노', 'Caramel Frappuccino', '카라멜과 커피가 어우러진 프라푸치노', 'images/카라멜 프라푸치노.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '프라푸치노'), '화이트 초콜릿 모카 프라푸치노', 'White Chocolate Mocha Frappuccino', '화이트 초콜릿, 커피와 우유가 조화로운 프라푸치노', 'images/화이트 초콜릿 모카 프라푸치노.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '프라푸치노'), '제주 까망 크림 프라푸치노', 'Jeju Camo Cream Frappuccino', '[제주지역 한정음료] 제주 까망 라떼의 프라푸치노 버전으로 쫄깃한 흑임자 떡과 블랙 소보로 토핑으로 컵빙수처럼 먹는 음료.', 'images/제주 까망 크림 프라푸치노.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '프라푸치노'), '제주 쑥떡 크림 프라푸치노', 'Jeju Mugwort Rice Cake Cream Frappuccino', '[제주지역 한정음료] 제주 쑥쑥 라떼의 시원한 버전으로 쫄깃쫄깃한 흑임자 떡으로 씹는 재미를 즐길 수 있는 음료.', 'images/제주 쑥떡 크림 프라푸치노.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '프라푸치노'), '제주 유기농 말차로 만든 크림 프라푸치노', 'Jeju Organic Matcha Cream Frappuccino', '깊고 진한 말차 본연의 맛과 향을 시원하고 부드럽게 즐길 수 있는 프라푸치노', 'images/제주 유기농 말차로 만든 크림 프라푸치노.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '프라푸치노'), '초콜릿 크림 칩 프라푸치노', 'Chocolate Cream Chip Frappuccino', '모카 소스와 진한 초콜릿 칩, 초콜릿 드리즐이 올라간 달콤한 크림 프라푸치노', 'images/초콜릿 크림 칩 프라푸치노.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '프라푸치노'), '피스타치오 아보카도 초콜릿 프라푸치노', 'Pistachio Avocado Chocolate Frappuccino', '고소한 피스타치오와 달콤한 초콜릿, 아보카도 텍스쳐의 완벽한 조화. 오트를 사용해 더 맛있는 프라푸치노', 'images/피스타치오 아보카도 초콜릿 프라푸치노.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '프라푸치노'), '화이트 타이거 프라푸치노', 'White Tiger Frappuccino', '밀크 쉐이크 같은 부드럽고 달콤한 바닐라 크림 프라푸치노에 깊은 풍미의 단맛을 가진 흑당시럽이 어우러져 용인에버랜드 백호의 줄무늬를 형상화한 부드럽고 달콤한 프라푸치노 * 용인에버랜드R 매장에서만 판매하는 음료입니다', 'images/화이트 타이거 프라푸치노.jpg');

INSERT INTO NutritionInformation (MenuID, Calories, Sugar, Protein, Sodium, SaturatedFat, Caffeine) 
VALUES 
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '에스프레소 프라푸치노'), 145, 29, 2, 115, 1.1, 120),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '자바 칩 프라푸치노'), 340, 42, 6, 180, 9, 100),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '카라멜 프라푸치노'), 300, 39, 4, 190, 7, 85),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '화이트 초콜릿 모카 프라푸치노'), 265, 43, 4, 160, 6, 85),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '제주 까망 크림 프라푸치노'), 600, 79, 9, 330, 7, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '제주 쑥떡 크림 프라푸치노'), 460, 57, 8, 250, 10, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '제주 유기농 말차로 만든 크림 프라푸치노'), 230, 28, 5, 150, 7, 60),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '초콜릿 크림 칩 프라푸치노'), 300, 40, 6, 160, 7, 10),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '피스타치오 아보카도 초콜릿 프라푸치노'), 295, 36, 3, 170, 1.3, 5),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '화이트 타이거 프라푸치노'), 410, 57, 5, 220, 14, 0);


INSERT INTO Menu (CategoryID, KoreanMenuName, EnglishMenuName, Description, ImageURL)
VALUES 
((SELECT CategoryID FROM Category WHERE CategoryName = '블렌디드'), '망고 패션 티 블렌디드', 'Mango Passion Tea Blended', '망고 패션 프루트 주스와 패션 탱고 티가 상큼하게 어우러진 과일 블렌디드', 'images/망고 패션 티 블렌디드.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '블렌디드'), '북한산 레몬 얼 그레이 블렌디드', 'Bukhansan Lemon Earl Grey Blended', '꼬냑 향을 가미한 상큼한 레모네이드와 은은한 얼 그레이 티가 어우러진 블렌디드 음료', 'images/북한산 레몬 얼 그레이 블렌디드.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '블렌디드'), '스타벅스 클래식 밀크티 블렌디드', 'Starbucks Classic Milk Tea Blended', '블랙티의 풍미와 향이 더욱 풍요롭게 느껴질 수 있는 밀크티 블렌디드', 'images/스타벅스 클래식 밀크티 블렌디드.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '블렌디드'), '여수 바다 유자 블렌디드', 'Yeosu Sea Citron Blended', '맑고 깨끗한 여수 경도의 낮 바다 풍경을 형상화한 음료로 상큼하게 즐길 수 있는 유자 블렌디드 음료 (유자:국내산)', 'images/여수 바다 유자 블렌디드.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '블렌디드'), '더 그린 쑥 블렌디드', 'The Green Ssuk Blended', '은은한 쑥과 곡물에 말차샷이 어우러져 고소하고 달콤하게 즐기는 블렌디드 *더북한산,경동1960,대구종로고택 매장에서만 판매하는 음료입니다.', 'images/더 그린 쑥 블렌디드.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '블렌디드'), '딸기 딜라이트 요거트 블렌디드', 'Strawberry Delight Yogurt Blended', '유산균이 살아있는 리얼 요거트와 풍성한 딸기 과육이 더욱 상큼하게 어우러진 과일 요거트 블렌디드', 'images/딸기 딜라이트 요거트 블렌디드.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '블렌디드'), '망고 바나나 블렌디드', 'Mango Banana Blended', '(Grande Only) 달콤한 망고 패션 프루트 주스에 바나나 1개가 통째로 들어간 신선한 블렌디드', 'images/망고 바나나 블렌디드.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '블렌디드'), '코튼 스카이 요거트 블렌디드', 'Cotton Sky Yogurt Blended', '고층 매장에서 느낄 수 있는 드넓은 전경을 형상화한 음료로, 붉게 노을지는 하늘을 표현한 솜사탕 토핑과 함께 즐길 수 있는 피나콜라다 컨셉의 음료.', 'images/코튼 스카이 요거트 블렌디드.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '블렌디드'), '피치 요거트 블렌디드', 'Peach Yogurt Blended', '달콤한 복숭아에 구름같은 요거트가 더해져 가볍고 상큼하게 즐길 수 있는 과일 블렌디드', 'images/피치 요거트 블렌디드.jpg');
INSERT INTO NutritionInformation (MenuID, Calories, Sugar, Protein, Sodium, SaturatedFat, Caffeine) 
VALUES 
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '망고 패션 티 블렌디드'), 150, 29, 2, 105, 0, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '북한산 레몬 얼 그레이 블렌디드'), 110, 25, 0, 10, 0.1, 8),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '스타벅스 클래식 밀크티 블렌디드'), 315, 37, 3, 55, 13, 60),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '여수 바다 유자 블렌디드'), 235, 57, 0, 10, 0, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '더 그린 쑥 블렌디드'), 370, 40, 13, 610, 6, 157),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '딸기 딜라이트 요거트 블렌디드'), 370, 57, 9, 110, 4.3, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '망고 바나나 블렌디드'), 290, 45, 4, 130, 0.9, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '코튼 스카이 요거트 블렌디드'), 270, 41, 4, 65, 1.8, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '피치 요거트 블렌디드'), 240, 35, 2, 75, 0.8, 0);

INSERT INTO Menu (CategoryID, KoreanMenuName, EnglishMenuName, Description, ImageURL)
VALUES 
((SELECT CategoryID FROM Category WHERE CategoryName = '스타벅스 리프레셔'), '딸기 아사이 레모네이드 스타벅스 리프레셔', 'Strawberry Acai Lemonade Starbucks Refresher', '딸기, 아사이베리 주스와 레모네이드가 달콤 상큼하게 조화된 맛에 가볍게 에너지 부스팅을 할 수 있는 리프레셔 음료.', 'images/딸기 아사이 레모네이드 스타벅스 리프레셔.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '스타벅스 리프레셔'), '망고 용과 레모네이드 스타벅스 리프레셔', 'Mango Dragonfruit Lemonade Starbucks Refresher', '망고 용과와 레모네이드가 달콤 상큼하게 조화된 맛에 가볍게 에너지 부스팅을 할 수 있는 음료.', 'images/망고 용과 레모네이드 스타벅스 리프레셔.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '스타벅스 리프레셔'), '퍼플 드링크 위드 망고 용과 스타벅스 리프레셔', 'Purple Drink with Mango Dragonfruit Starbucks Refresher', '망고 용과와 코코넛 밀크가 달콤하고 부드럽게 조화된 맛에 가볍게 에너지 부스팅을 할 수 있는 음료.', 'images/퍼플 드링크 위드 망고 용과 스타벅스 리프레셔.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '스타벅스 리프레셔'), '핑크 드링크 위드 딸기 아사이 스타벅스 리프레셔', 'Pink Drink with Strawberry Acai Starbucks Refresher', '딸기, 아사이베리 주스와 코코넛 베이스가 달콤하고 부드럽게 조화된 맛에 가볍게 에너지 부스팅을 할 수 있는 리프레셔 음료.', 'images/핑크 드링크 위드 딸기 아사이 스타벅스 리프레셔.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '스타벅스 피지오'), '레드 애플 피지오', 'Red Apple Fizzio', '달콤상큼한 사과맛으로 가볍게 즐길 수 있는 애플 피지오.', 'images/레드 애플 피지오.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '스타벅스 피지오'), '아이스크림 레드 애플 피지오', 'Ice Cream Red Apple Fizzio', '리저브 전용 아이스크림과 함께 달콤 상큼한 사과맛으로 부드럽게 먹을 수 있는 애플 피지오.', 'images/아이스크림 레드 애플 피지오.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '스타벅스 피지오'), '여수 바다 자몽 피지오', 'Yeosu Sea Grapefruit Fizzio', '여수 돌산대교의 밤바다 풍경을 형상화한 음료로 알록달록 색상 조명의 토핑과 함께 여수의 풍경을 바라보며 즐길 수 있는 트로피컬 맛의 음료.', 'images/여수 바다 자몽 피지오.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '스타벅스 피지오'), '유자 패션 피지오', 'Yuja Passion Fizzio', '상콤달콤 고흥 유자와 스타벅스 시그니처 패션 탱고 티에 한 잔 한 잔 탄산을 넣어 제조하는 피지오 음료. 시트러스한 청량감을 가득 즐기세요!', 'images/유자 패션 피지오.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '스타벅스 피지오'), '제주팔삭 셔벗 피지오', 'Jeju Patbingsu Sherbet Fizzio', '제주송당의 소원나무에 걸린 제주 동백꽃을 형상화한 음료 제주의 자몽이라는 별명을 가진 제주 팔삭과 제주 한라봉으로 매장에서 직접 만든 셔벗과 함께 상큼하게 즐길 수 있는 피지오 음료.', 'images/제주팔삭 셔벗 피지오.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '스타벅스 피지오'), '제주팔삭 피지오', 'Jeju Patbingsu Fizzio', '제주의 자몽이라는 별명을 가진 팔삭과 제주 한라봉으로 상큼하고 가볍게 즐길 수 있는 피지오 음료', 'images/제주팔삭 피지오.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '스타벅스 피지오'), '쿨 라임 피지오', 'Cool Lime Fizzio', '그린 빈 추출액이 들어간 라임 베이스에 건조된 라임 슬라이스를 넣고 스파클링한 시원하고 청량감 있는 음료입니다. (카페인이 함유된 탄산음료입니다)', 'images/쿨 라임 피지오.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '스타벅스 피지오'), '피치 딸기 피지오', 'Peach Strawberry Fizzio', '상큼한 과일과 청량한 탄산의 조화. 피치 특유의 감각적인 색상과 무드를 탄산과 함께 즐길 수 있는 피지오', 'images/피치 딸기 피지오.jpg');
INSERT INTO NutritionInformation (MenuID, Calories, Sugar, Protein, Sodium, SaturatedFat, Caffeine) 
VALUES 
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '딸기 아사이 레모네이드 스타벅스 리프레셔'), 265, 62, 1, 0, 0, 73),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '망고 용과 레모네이드 스타벅스 리프레셔'), 95, 23, 0, 35, 0, 25),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '퍼플 드링크 위드 망고 용과 스타벅스 리프레셔'), 90, 16, 0, 70, 0, 25),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '핑크 드링크 위드 딸기 아사이 스타벅스 리프레셔'), 100, 18, 1, 40, 0, 30),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '레드 애플 피지오'), 110, 26, 0, 10, 0, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스크림 레드 애플 피지오'), 240, 36, 2, 45, 5, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '여수 바다 자몽 피지오'), 250, 45, 1, 105, 0, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '유자 패션 피지오'), 145, 36, 0, 5, 0, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '제주팔삭 셔벗 피지오'), 165, 38, 0, 5, 0, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '제주팔삭 피지오'), 150, 34, 0, 5, 0, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '쿨 라임 피지오'), 105, 25, 0, 20, 0, 110),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '피치 딸기 피지오'), 145, 26, 0, 20, 0, 37);


INSERT INTO Menu (CategoryID, KoreanMenuName, EnglishMenuName, Description, ImageURL)
VALUES 
((SELECT CategoryID FROM Category WHERE CategoryName = '티(티바나)'), '아이스 크리스마스 루비 뱅쇼', 'Iced Christmas Ruby Bancha', '카베르네 쇼비뇽 와인 추출액이 들어간 진한 레드 와인 베이스에 허브&스파이스백을 넣어 추운 겨울에 잘 어울리는 클래식한 뱅쇼. 허브&스파이스 백은 사과, 시나몬, 팔각 등 다양한 과일&허브&향신료가 들어가 기호에 맞게 우려 드실 수 있습니다.', 'images/아이스 크리스마스 루비 뱅쇼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '티(티바나)'), '아이스 핑크 캐모마일 릴렉서', 'Iced Pink Chamomile Relaxer', '크리스마스에 어울리는 샴페인 한 잔과 같은 핑크 캐모마일 릴렉서! 리치, 레몬그라스, 캐모마일의 차분하면서도 새콤달콤한 조합. 유스베리 티가 추가되어 더욱 화사해진 향. 크리스마스 리스를 닮은 로즈마리와 레드커런트로 크리스마스를 더욱 즐겁게!', 'images/아이스 핑크 캐모마일 릴렉서.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '티(티바나)'), '크리스마스 루비 뱅쇼', 'Christmas Ruby Bancha', '카베르네 쇼비뇽 와인 추출액이 들어간 진한 레드 와인 베이스에 허브&스파이스백을 넣어 추운 겨울에 잘 어울리는 클래식한 뱅쇼. 허브&스파이스 백은 사과, 시나몬, 팔각 등 다양한 과일&허브&향신료가 들어가 기호에 맞게 우려 드실 수 있습니다.', 'images/크리스마스 루비 뱅쇼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '티(티바나)'), '핑크 캐모마일 릴렉서', 'Pink Chamomile Relaxer', '크리스마스에 어울리는 샴페인 한 잔과 같은 핑크 캐모마일 릴렉서! 리치, 레몬그라스, 캐모마일의 차분하면서도 새콤달콤한 조합. 유스베리 티가 추가되어 더욱 화사해진 향. 크리스마스 리스를 닮은 로즈마리와 레드커런트로 크리스마스를 더욱 즐겁게!', 'images/핑크 캐모마일 릴렉서.jp'),
((SELECT CategoryID FROM Category WHERE CategoryName = '티(티바나)'), '말차 크림 브륄레 라떼', 'Matcha Cream Brulee Latte', '프랑스 디저트 크림 브륄레에서 영감을 받은 음료로 부드러운 버터, 바닐라 풍미와 쌉싸름한 말차의 맛이 조화롭게 어우러진 디저트 타입의 말차 라떼', 'images/말차 크림 브륄레 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '티(티바나)'), '말차 티라미수 라떼', 'Matcha Tiramisu Latte', '달콤 쌉싸름한 말차크림으로 부드럽게 즐길 수 있는 디저트 타입의 말차 티라미수 음료', 'images/말차 티라미수 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '티(티바나)'), '아이스 말차 크림 브륄레 라떼', 'Iced Matcha Cream Brulee Latte', '프랑스 디저트 크림 브륄레에서 영감을 받은 음료로 부드러운 버터, 바닐라 풍미와 쌉싸름한 말차의 맛이 조화롭게 어우러진 디저트 타입의 말차 라떼', 'images/아이스 말차 크림 브륄레 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '티(티바나)'), '아이스 말차 티라미수 라떼', 'Iced Matcha Tiramisu Latte', '프랑스 디저트 크림 브륄레에서 영감을 받은 음료로 부드러운 버터, 바닐라 풍미와 쌉싸름한 말차의 맛이 조화롭게 어우러진 디저트 타입의 말차 라떼', 'images/아이스 말차 티라미수 라떼.jpg'),
((SELECT CategoryID FROM Category WHERE CategoryName = '티(티바나)'), '민트 블렌드 티', 'Mint Blend Tea', '스피어민트, 페퍼민트, 레몬머틀이 블렌딩된 상쾌한 허브 티', 'images/민트 블렌드 티.jpg');
INSERT INTO NutritionInformation (MenuID, Calories, Sugar, Protein, Sodium, SaturatedFat, Caffeine) 
VALUES 
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 크리스마스 루비 뱅쇼'), 180, 38, 0, 5, 0, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 핑크 캐모마일 릴렉서'), 130, 24, 0, 10, 0, 1),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '크리스마스 루비 뱅쇼'), 175, 37, 0, 5, 0, 0),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '핑크 캐모마일 릴렉서'), 195, 36, 0, 15, 0, 2),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '말차 크림 브륄레 라떼'), 325, 35, 9, 140, 10, 46),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '말차 티라미수 라떼'), 405, 38, 11, 220, 15, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 말차 크림 브륄레 라떼'), 250, 27, 6, 85, 9, 46),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '아이스 말차 티라미수 라떼'), 345, 33, 8, 170, 13, 75),
((SELECT MenuID FROM Menu WHERE KoreanMenuName = '민트 블렌드 티'), 0, 0, 0, 0, 0, 0);
