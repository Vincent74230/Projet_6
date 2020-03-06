from faker import Faker
import mysql.connector
fake = Faker()
import random


CON = mysql.connector.connect(
    user= 'oc_student',
    password='password',
    host='localhost',
    database = 'oc_pizza_2')
KURSOR = CON.cursor()


KURSOR.execute(
    "INSERT INTO Role VALUES ('1','admin'),('2','pizzaiolo'),('3','delivery_man'),('4','customer')")

for i in range (0,10):
    rand = random.randint (1,4)
    rand = str(rand)
    datas_bis = (fake.last_name(),fake.job(),fake.first_name(),fake.last_name(),fake.email(),fake.phone_number(),fake.date_time(),rand)
    ad_datas_bis = ("INSERT INTO User (login,password,first_name,last_name,e_mail,tel,registration_date,role_id) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)")
    KURSOR.execute(ad_datas_bis,datas_bis)

for i in range (0,10):
    datas_address = (fake.building_number(),fake.street_address(),fake.street_address(),fake.city(),fake.postcode(),fake.state(),fake.country())
    ad_datas_address = ("INSERT INTO Address (road_number,address_line1,address_line2,town_city,postcode,region_state,country) VALUES (%s,%s,%s,%s,%s,%s,%s)")
    KURSOR.execute(ad_datas_address,datas_address)

KURSOR.execute("INSERT INTO Order_status VALUES (")

for i in range (0,10):



CON.commit()

KURSOR.close()
CON.close()
