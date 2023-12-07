from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
import requests
import os

# WebDriver 설정
driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()))
url = "https://www.starbucks.co.kr/menu/drink_list.do"
driver.get(url)

# 페이지 로딩 대기
driver.implicitly_wait(10)

# 메뉴 데이터를 가진 모든 <li> 태그 찾기
menu_items = driver.find_elements(By.CSS_SELECTOR, 'li.menuDataSet')

# 이미지 폴더 생성
if not os.path.exists('./images'):
    os.makedirs('./images')

# 각 메뉴 아이템에 대해 이미지 URL 추출 및 저장
for item in menu_items:
    # <img> 태그에서 src 속성 추출
    img_tag = item.find_element(By.CSS_SELECTOR, 'img')
    img_src = img_tag.get_attribute('src')
    coffee_name = img_tag.get_attribute('alt')  # 이미지의 alt 속성을 사용하여 커피 이름 추출

    # 요청을 통해 이미지 데이터 가져오기
    img_data = requests.get(img_src).content
    with open(f'./images/{coffee_name}.jpg', 'wb') as file:
        file.write(img_data)

# WebDriver 종료
driver.quit()
