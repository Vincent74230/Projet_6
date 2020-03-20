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

KURSOR.execute("DELETE FROM Order_preparation")
KURSOR.execute("DELETE FROM Order_main")
KURSOR.execute("DELETE FROM User")
KURSOR.execute("DELETE FROM Order_status")
KURSOR.execute("DELETE FROM Shop")
KURSOR.execute("DELETE FROM Role")
KURSOR.execute("DELETE FROM Article")
KURSOR.execute("DELETE FROM Ingredient")
KURSOR.execute("DELETE FROM Address")

KURSOR.execute("ALTER TABLE Address AUTO_INCREMENT = 1")
KURSOR.execute("ALTER TABLE User AUTO_INCREMENT = 1")
KURSOR.execute("ALTER TABLE Order_main AUTO_INCREMENT = 1")

KURSOR.execute(
    "INSERT INTO Role VALUES ('1','admin'),('2','pizzaiolo'),('3','delivery_man'),('4','customer')")
KURSOR.execute(
    "INSERT INTO Order_status VALUES ('1','cancelled'),('2','preparation'),('3','on_delivery'),('4','delivered')")

for i in range (0, 20):
    rand_role = random.randint (1,4)
    rand_role = str(rand_role)
    datas_bis = (fake.last_name(),fake.job(),fake.first_name(),fake.last_name(),fake.email(),fake.phone_number(),fake.date_time(),rand_role)
    ad_datas_bis = ("INSERT INTO User (login,password,first_name,last_name,e_mail,tel,registration_date,role_id) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)")
    KURSOR.execute(ad_datas_bis,datas_bis)

for _ in range (0, 20):
    datas_address = (fake.building_number(),fake.street_address(),fake.street_address(),fake.city(),fake.postcode(),fake.state(),fake.country())
    ad_datas_address = ("INSERT INTO Address (road_number,address_line1,address_line2,town_city,postcode,region_state,country) VALUES (%s,%s,%s,%s,%s,%s,%s)")
    KURSOR.execute(ad_datas_address,datas_address)

for i in range (1,6):
    id_shop= str(i)
    datas_shop = (id_shop,fake.building_number(),fake.street_address(),fake.street_address(),fake.city(),fake.postcode(),fake.state(),fake.country())
    ad_datas_shop= ("INSERT INTO Shop (id,road_number,address_line1,address_line2,town_city,postcode,region_state,country) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)")
    KURSOR.execute(ad_datas_shop,datas_shop)

for i in range (0, 25):
    id_article = str(i+1)
    datas_article = (id_article,fake.city(),fake.street_address())
    ad_datas_article = ("INSERT INTO Article (id,name,description) VALUES (%s,%s,%s)")
    KURSOR.execute(ad_datas_article,datas_article)

for i in range (0, 12):
    id_ingredient = str(i)
    datas_ingredient = (id_ingredient,fake.color_name())
    ad_datas_ingredient = ("INSERT INTO Ingredient (id,name) VALUES (%s,%s)")
    KURSOR.execute(ad_datas_ingredient,datas_ingredient)

for _ in range (0, 20):
    payment_list = ['y', 'n']
    rand_pay = random.randint(0, 1)
    payment = payment_list[rand_pay]

    payment_method_list = ['cash','card','check']
    rand_payment_method = random.randint(0, 2)
    payment_method = payment_method_list[rand_payment_method]

    delivery_method_list = ['on_the_spot', 'to_take_away', 'delivered']
    rand_delivery_method = random.randint(0, 2)
    delivery_method = delivery_method_list[rand_delivery_method]

    shop_id = str(random.randint(1, 5))
    status_order_id = str(random.randint(1, 4))
    user_id = str(random.randint(1, 20))
    address_id = str(random.randint(1, 20))

    datas_order = (fake.date_time(),payment,payment_method,delivery_method,shop_id,status_order_id,address_id,user_id)
    ad_datas_order = ("INSERT INTO Order_main (order_date, payment, payment_method, delivery_method, shop_id, order_status_id, address_id, user_id) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)")
    KURSOR.execute(ad_datas_order, datas_order)

for i in range (0, 20):
    order = str(i+1)
    user = str(random.randint(1, 20))
    datas_order_preparation = (user,order)
    ad_datas_order_preparation = ("INSERT INTO Order_preparation (user_id, order_id) VALUES (%s, %s)")
    KURSOR.execute (ad_datas_order_preparation, datas_order_preparation)

for i in range (0, 20):
    order = str(i+1)
    article = str(random.randint(1, 25))
    datas_order_line = (article,order,(0000001.000))
    ad_datas_order_line = ("INSERT INTO Order_line (article_id, order_id, quantity) VALUES (%s, %s, %s)")
    KURSOR.execute(ad_datas_order_line,datas_order_line)

CON.commit()

KURSOR.close()
CON.close()
