***ขั้นตอนการติดตั้งโปรแกรม เพื่อใช้งาน Robot Framework บน VS code***
1. Download และ Install python (เข้าไปที่ python.org)

2. เปิด command prompt และใส่ script ตามนี้เพื่อ Install robot framework
-> pip install robotframework

3. หาก pip version ไม่ใช่ล่าสุด ใส่ script ตามนี้
-> -m pip install –upgrade pip

4. ตั้งติดตั้ง selenium2library เป็น web testing library ของ robotframework โดยใส่ script ตามนี้
-> pip install robotframework-selenium2library

5. Download และ Install Visual Studio Code (เข้าไปที่ code.visualstudio.com)

6. เปิด VS code แล้ว create folder เพื่อเก็บ robot file

7. เปิด Extension โดย tab ซ้ายมือหรือ Ctrl+Shift+X เพื่อติดตั้งสำหรับการใช้งาน
-> พิมพ์ robot framework
-> เลือก Robot Framework Intellisense และกด install
-> เลือก robot framework Ianguage และกด install (ในกรณีที่ติดตั้งไม่ได้ให้ไป install Robot Code แทน)

8. create xxx.robot file แล้ว save ลง folder พร้อมใช้งาน

***ขั้นตอนการติดตั้ง chromedriver สำหรับการใช้เขียน robot framework ในการใช้งาน browser*** 

1. เปิด chrome เพื่อเช็ค version ล่าสุดที่ใช้งาน
-> เปิด chrome
-> กด 3 dot บนขวามือบนสุด
-> เลือก Help -> แล้วกด About Google Chrome

2. เปิด chromedriver website เพื่อ download และ install
-> https://chromedriver.chromium.org/ 
-> Download zip file -> Extract zip file -> เลือก location path ในการเก็บ chromedriver.exe 

***การเรียกใช้งาน chromedriver ใน test script***
Create Webdriver	Chrome	executable_path=C:/your location PATH/chromedriver.exe 
Go To 	http://xxx.com

 
