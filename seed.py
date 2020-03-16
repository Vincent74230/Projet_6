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

def fetch_pk(table):
    table = str(table)
    fetch_datas = ("SELECT id FROM {}".format(table))
    print (fetch_datas)


KURSOR.execute("DELETE FROM User")
KURSOR.execute("DELETE FROM Shop")
KURSOR.execute("DELETE FROM Role")
KURSOR.execute("DELETE FROM Article")
KURSOR.execute("DELETE FROM Order_status")
KURSOR.execute("DELETE FROM Ingredient")

KURSOR.execute(
    "INSERT INTO Role VALUES ('1','admin'),('2','pizzaiolo'),('3','delivery_man'),('4','customer')")
KURSOR.execute(
    "INSERT INTO Order_status VALUES ('1','cancelled'),('2','preparation'),('3','delivery'),('4','delivered')")

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

for i in range (1,6):
    id_shop= str(i)
    datas_shop = (id_shop,fake.building_number(),fake.street_address(),fake.street_address(),fake.city(),fake.postcode(),fake.state(),fake.country())
    ad_datas_shop= ("INSERT INTO Shop (id,road_number,address_line1,address_line2,town_city,postcode,region_state,country) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)")
    KURSOR.execute(ad_datas_shop,datas_shop)

for i in range (0,20):
    id_article = str(i)
    datas_article = (id_article,fake.city(),fake.street_address())
    ad_datas_article = ("INSERT INTO Article (id,name,description) VALUES (%s,%s,%s)")
    KURSOR.execute(ad_datas_article,datas_article)

for i in range (0,12):
    id_ingredient = str(i)
    datas_ingredient = (id_ingredient,fake.color_name())
    ad_datas_ingredient = ("INSERT INTO Ingredient (id,name) VALUES (%s,%s)")
    KURSOR.execute(ad_datas_ingredient,datas_ingredient)

fetch_pk('table')

CON.commit()

KURSOR.close()
CON.close()
