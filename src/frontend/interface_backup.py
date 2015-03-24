#!/usr/bin/env python3
# -*- coding: utf-8 -*-

__author__ = 'Ranadeep Polavarapu and Roman Lipisiy'


import sys
import os
import platform
import random
import pprint
import json
import datetime
from datetime import date

try:
    import mysql
    import mysql.connector
except ImportError as e:
    print("ERROR: MySQLdb (MySQL Python3 connector) is not installed. Please install by doing \"pip3 install https://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-2.0.1.tar.gz\".",
          file=sys.stderr)
    sys.exit(1)

DB_HOST = "104.236.198.237"
DB_USER = "pola3120"
DB_PASSWD = "D3xBfwaebmTRJm6S"
DB_DBNAME = "inventory_management"

def clear_tty():
    """
    Performs a tty screen clear. This is dependent on
    the OS the system is running on.
    """
    os_name = platform.system()
    if os_name == "Windows":
        # Windows system
        os.system("cls")
    else:
        # Darwin or UNIX system
        os.system("clear")
    return

# Utility Function
def chunker(seq, size):
    return (seq[pos:pos + size] for pos in range(0, len(seq), size))

def random_date(year_high=datetime.datetime.now().year, year_low=2013, month_high=12, month_low=1, day_high=28, day_low=1):
    year = random.randint(year_low, year_high)
    month = random.randint(month_low, month_high)
    day = random.randint(day_low, day_high)
    dt = date(year, month, day)
    return dt


def initalize_DB(host, user, password, db_name):
    """
    Creates an open MySQL connection and returns the connection.
    """
    db_conn = mysql.connector.connect(
        user=user,
        password=password,
        host=host,
        db=db_name)
    return db_conn


def create_cursor(db_conn):
    cur = db_conn.cursor()
    return cur


def execute_command(cur, sql_statement):
    """
    Executes a SQL statement given the database cursor and SQL statement as a string
    and returns the resultant output as a tuple.
    """
    cur.execute(sql_statement)

    result = ()

    for row in cur.fetchall():
        result += row

    return result

# Main definition - constants
menu_actions = {}

# =======================
#     MENUS FUNCTIONS
# =======================

# Main menu


def main_menu():
    clear_tty()

    print("Welcome,\n")
    print("Please select an option:")
    print("1. Purchase Item from Vendor")
    print("2. Sell Item to Customer")
    print("3. Add Sales Promotion (Discount) to an Item")
    print("4. Show Stock Alert for an Item")
    print("5. Display Stock Alerts for ALL Items")
    print("6. Calculate Total Inventory Value")
    print("7. Calculate Total Inventory Turnover")
    print("8. Calculate Total Inventory Turnover Time")
    print("\n0. Quit")
    choice = input(" >>  ")
    exec_menu(choice)

    return

# Execute menu


def exec_menu(choice):
    clear_tty()
    ch = choice.lower()
    if ch == '':
        menu_actions['main_menu']()
    else:
        try:
            menu_actions[ch]()
        except KeyError:
            print("Invalid selection, please try again.\n")
            menu_actions['main_menu']()
    return

# Menu 1


def menu1():
    print("Menu 1: Purchase Item from Vendor!\n")
    print("This operation will allow you to purchase an item from the vendors.\n")

    empl_ID = int(input("Enter your Employee ID (int): "))
    item_request_ID = int(input("Enter the ID of Item to be ordered (int): "))

    result = execute_command(cur, "SELECT MAX(item_ID) FROM Item;")
    max_item_ID = result[0]
    if (item_request_ID < max_item_ID):
        result = execute_command(cur, "SELECT stock_level FROM Item WHERE item_ID={};".format(item_request_ID))
        cur_stock = result[0]
    else:
        cur_stock = 0
    print("\nThere are currently {} SKUs in stock.\n".format(cur_stock))

    item_qty = int(input("Enter the quantity of the Item to be ordered (int): "))


    # Purchase Order
    order_date = date.today()
    date_completed = random_date(year_low=order_date.year, month_low=order_date.month, day_low=order_date.day)

    result = execute_command(cur, "SELECT MAX(order_ID) FROM PurchaseOrder;")
    max_order_ID = result[0] + 1

    try:
        cur.execute("""INSERT INTO `PurchaseOrder` (`order_ID`, `order_date`, `date_completed`, `employee_ID`) VALUES ({}, '{}', '{}', {});""".format(max_order_ID, order_date, date_completed, empl_ID))
        db_conn.commit()
    except:
        db_conn.rollback()

    if item_request_ID < max_item_ID:
        try:
            result = execute_command(cur, "SELECT stock_level FROM Item WHERE item_ID={};".format(item_request_ID))
            current_stock_level = result[0]
            cur.execute("""UPDATE Item SET stock_level={} WHERE item_ID={};""".format(current_stock_level + item_qty, item_request_ID))
            db_conn.commit()
        except:
            db_conn.rollback()
    else:
        try:
            selling_price = round(random.uniform(0, 1000), 2)
            cur.execute("""INSERT INTO `Item` (`item_ID`, `UPC_code`, `is_taxable`, `stock_level`, `selling_price`, `discount_percentage`, `procured_price`, `category_ID`) VALUES ({}, {}, {}, {}, {}, {}, {}, {})""".format(item_request_ID, random.randint(100000000, 999999999), random.randint(0, 1), item_qty, selling_price, 0, random.randint(0, int(selling_price)), random.randint(0, 8)))
            db_conn.commit()
        except:
            db_conn.rollback()

    try:
        cur.execute("""INSERT INTO `PurchaseOrderContains` (`order_ID`, `item_ID`, `store_ID`) VALUES ({}, {}, {});""".format(max_order_ID, item_request_ID, random.randint(0, 23)))
        db_conn.commit()
    except:
        db_conn.rollback()

    print("Item has been ordered successfully!\n")
    result = execute_command(cur, "SELECT stock_level FROM Item WHERE item_ID={};".format(item_request_ID))
    cur_stock = result[0]
    print("\nThere are now {} SKUs in stock.\n".format(cur_stock))


    print("9. Back")
    print("0. Quit")
    choice = input(" >>  ")
    exec_menu(choice)
    return


# Menu 2
def menu2():
    print("Menu 2: Sell Item to Customer !\n")

    result = execute_command(cur, "SELECT MAX(item_ID) FROM Item;")
    print("Please select an Item ID from 0 to {}. \n".format(result[0]))

    item_ID = int(input("Enter Item ID: "))

    result = execute_command(cur, "SELECT MAX(item_ID) FROM Item;")
    max_item_ID = result[0]
    if (item_ID < max_item_ID):
        result = execute_command(cur, "SELECT stock_level FROM Item WHERE item_ID={};".format(item_ID))
        cur_stock = result[0]
    else:
        cur_stock = 0
    print("\nThere are currently {} SKUs in stock.\n".format(cur_stock))

    item_qty = int(input("Enter Item Quantity: "))

    result = execute_command(cur, "SELECT stock_level FROM Item WHERE item_ID={0};".format(item_ID))
    item_current_stock = result[0]

    result = execute_command(cur, "SELECT MAX(transaction_id) FROM Transaction;")
    max_transaction_id = result[0] + 1

    TRANSACTION_PAYMENT_OPTIONS = ['CREDIT CARD', 'DEBIT', 'CASH']
    payment_option = random.choice(TRANSACTION_PAYMENT_OPTIONS)

    try:
        cur.execute("""INSERT INTO `Transaction` (`transaction_ID`, `payment_option`, `quantity`) VALUES ({0}, '{1}', {2});""".format(max_transaction_id, payment_option, item_qty))
        cur.execute("""UPDATE Item SET stock_level={0} WHERE item_ID={1};""".format(item_current_stock - item_qty, item_ID))
        db_conn.commit()
    except:
        db_conn.rollback()

    result = execute_command(cur, "SELECT stock_level FROM Item WHERE item_ID={};".format(item_ID))
    cur_stock = result[0]

    print("Item {} sold to customer! Quantity of {} has been depleted from Item {}. The current stock now is: {}.".format(item_ID, item_qty, item_ID, cur_stock))

    print("9. Back")
    print("0. Quit")
    choice = input(" >>  ")
    exec_menu(choice)

    return

# Menu 3
def menu3():
    print("Menu 3: Add Sales Promotion to an Item!\n")

    result = execute_command(cur, "SELECT MAX(item_ID) FROM Item;")
    print("Please select an Item ID from 0 to {}. \n".format(result[0]))

    item_ID = int(input("Enter Item ID (int): "))
    new_discount_percentage = round(float(input("Enter a Discount Percentage (%): ")) / 100, 2)

    try:
        cur.execute("""UPDATE Item SET discount_percentage={0} WHERE item_ID={1};""".format(new_discount_percentage, item_ID))
        db_conn.commit()
    except:
        db_conn.rollback()

    print("9. Back")
    print("0. Quit")
    choice = input(" >>  ")
    exec_menu(choice)

    return

# Menu 4
def menu4():
    print("Menu 4: Show Stock Alert for an Item! \n")
    print("This operation will display if a selected Item is below your desired stock level and displays an alert if lower.\n")

    result = execute_command(cur, "SELECT MAX(item_ID) FROM Item;")
    print("Please select an Item ID from 0 to {}. \n".format(result[0]))

    item_ID = int(input("Enter Item ID (int): "))
    stock_alert_level = int(input("Please enter your desired stock level (int): "))

    result = execute_command(cur, "SELECT stock_level FROM Item WHERE item_ID={0};".format(item_ID))
    current_stock_level = result[0]

    if current_stock_level < stock_alert_level:
        print("ALERT: Stock level for Item {} is below the desired stock level. It is short by {} SKUs (Stock Keeping Units).".format(item_ID, stock_alert_level - current_stock_level))
    else:
        print("The Item is above the desired stock level. Item {} is in good status!".format(item_ID))

    print("9. Back")
    print("0. Quit")
    choice = input(" >>  ")
    exec_menu(choice)
    return

# Menu 5
def menu5():
    print("Menu 5: Display Stock Alert for ALL Item! \n")
    print("This operation will display an alert for all Items below your desired stock level.\n")

    result = execute_command(cur, "SELECT MAX(item_ID) FROM Item;")
    print("Please select an Item ID from 0 to {}. \n".format(result[0]))

    stock_alert_level = int(input("Please enter your desired stock level (int): "))

    result = execute_command(cur, "SELECT item_ID, stock_level FROM Item WHERE stock_level < {};".format(stock_alert_level))
    print(result)

    for group in chunker(result, 2):
        item_ID = group[0]
        stock_level = group[1]

        if stock_level < stock_alert_level:
            print("ALERT: Stock level for Item {} is below the desired stock level. It is short by {} SKUs (Stock Keeping Units).".format(item_ID, stock_alert_level - stock_level))

    print("9. Back")
    print("0. Quit")
    choice = input(" >>  ")
    exec_menu(choice)
    return

# Menu 6
def menu6():
    print("Menu 6: Calculate Total Inventory Value! \n")

    print("This operation will display the total value of all items.\n")

    result = execute_command(cur, "SELECT item_ID, stock_level, selling_price FROM Item;")

    total_inventory_value = 0
    for group in chunker(result, 3):
        item_ID = group[0]
        stock_level = group[1]
        selling_price = group[2]

        total_inventory_value += (stock_level * selling_price)

    print("The total value of the entire inventory is ${:,.2f}.".format(total_inventory_value))

    print("9. Back")
    print("0. Quit")
    choice = input(" >>  ")
    exec_menu(choice)
    return

# Menu 7
def menu7():
    print("Menu 7: Calculate Total Inventory Turnover! \n")
    print("This operation will find Inventory Turnover (Sales / Inventory). \n")

    result_transaction = execute_command(cur, """SELECT SUM(quantity) FROM Transaction;""")
    result_item_inventory = execute_command(cur, """SELECT SUM(stock_level) FROM Item;""")

    total_inventory_turnover = int(result_item_inventory[0]) / int(result_transaction[0])
    print("Total Inventory Turnover Ratio: {:.2f}.".format(total_inventory_turnover))

    print("9. Back")
    print("0. Quit")
    choice = input(" >>  ")
    exec_menu(choice)
    return

def menu8():
    print("Menu 8: Calculate Total Inventory Turnover Time! \n")
    print("This operation will display the Total Inventory Turnover in days.\n")

    result_transaction = execute_command(cur, """SELECT SUM(quantity) FROM Transaction;""")
    result_item_inventory = execute_command(cur, """SELECT SUM(stock_level) FROM Item;""")

    total_inventory_turnover_time = 365 / (int(result_item_inventory[0]) / int(result_transaction[0]))
    print("Total Inventory Turnover Time: {:.0f} days.".format(total_inventory_turnover_time))

    print("9. Back")
    print("0. Quit")
    choice = input(" >>  ")
    exec_menu(choice)
    return

# Back to main menu


def back():
    menu_actions['main_menu']()

# Exit program


def exit():
    sys.exit()

# =======================
#    MENUS DEFINITIONS
# =======================

# Menu definition
menu_actions = {
    'main_menu': main_menu,
    '1': menu1,
    '2': menu2,
    '3': menu3,
    '4': menu4,
    '5': menu5,
    '6': menu6,
    '7': menu7,
    '8': menu8,
    '9': back,
    '0': exit,
}

# =======================
#      MAIN PROGRAM
# =======================


# Main Program
if __name__ == "__main__":
    # Launch main menu
    db_conn = initalize_DB(DB_HOST, DB_USER, DB_PASSWD, DB_DBNAME)
    cur = create_cursor(db_conn)
    print("[INFO]: DB Connection Successfully established!")
    main_menu()

