-- 기존 데이터베이스가 있다면 삭제
DROP DATABASE IF EXISTS CoffeeDB;

-- 데이터베이스 생성
CREATE DATABASE CoffeeDB;

-- 사용할 데이터베이스 선택
USE CoffeeDB;
CREATE TABLE Category (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

CREATE TABLE Menu (
    MenuID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryID INT,
    KoreanMenuName VARCHAR(100),
    EnglishMenuName VARCHAR(100),
    Description TEXT,
    ImageURL VARCHAR(255),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE NutritionInformation (
    NutritionID INT AUTO_INCREMENT PRIMARY KEY,
    MenuID INT,
    Calories INT,
    Sugar DECIMAL(5,2),
    Protein DECIMAL(5,2),
    Sodium INT,
    SaturatedFat DECIMAL(5,2),
    Caffeine INT,
    FOREIGN KEY (MenuID) REFERENCES Menu(MenuID)
);
