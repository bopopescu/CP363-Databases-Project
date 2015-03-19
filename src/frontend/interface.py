#!/usr/bin/env python3
# -*- coding: utf-8 -*-


import sys
import os
import platform
import pprint
import json

try:
    import mysql
    import mysql.connector
except ImportError as e:
    print("ERROR: MySQLdb (MySQL Python3 connector) is not installed. Please install by doing \"pip3 install https://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-2.0.1.tar.gz\".",
          file=sys.stderr)
    sys.exit(1)


#  dP""b8  dP"Yb  88b 88 .dP"Y8 888888    db    88b 88 888888 .dP"Y8
# dP   `" dP   Yb 88Yb88 `Ybo."   88     dPYb   88Yb88   88   `Ybo."
# Yb      Yb   dP 88 Y88 o.`Y8b   88    dP__Yb  88 Y88   88   o.`Y8b
#  YboodP  YbodP  88  Y8 8bodP'   88   dP""""Yb 88  Y8   88   8bodP'

DB_HOST = "104.236.198.237"
DB_USER = "pola3120"
DB_PASSWD = "D3xBfwaebmTRJm6S"
DB_DBNAME = "inventory_management"

# 88   88 888888 88 88     88 888888 88 888888 .dP"Y8
# 88   88   88   88 88     88   88   88 88__   `Ybo."
# Y8   8P   88   88 88  .o 88   88   88 88""   o.`Y8b
# `YbodP'   88   88 88ood8 88   88   88 888888 8bodP'


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

# .dP"Y8  dP"Yb  88         888888 88   88 88b 88  dP""b8 888888 88  dP"Yb  88b 88 .dP"Y8
# `Ybo." dP   Yb 88         88__   88   88 88Yb88 dP   `"   88   88 dP   Yb 88Yb88 `Ybo."
# o.`Y8b Yb b dP 88  .o     88""   Y8   8P 88 Y88 Yb        88   88 Yb   dP 88 Y88 o.`Y8b
# 8bodP'  `"YoYo 88ood8     88     `YbodP' 88  Y8  YboodP   88   88  YbodP
# 88  Y8 8bodP'


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
    print("4. Set Stock Alert for an Item")
    print("5. List all Item Order Discrepancies")
    print("6. Calculate Total Inventory Value")
    print("7. Calculate Total Inentory Turnover")
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
    print("Hello Menu 1 !\n")
    print("9. Back")
    print("0. Quit")
    choice = input(" >>  ")
    exec_menu(choice)
    return


# Menu 2
def menu2():
    print("Hello Menu 2 !\n")
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
    '9': back,
    '0': exit,
}

# =======================
#      MAIN PROGRAM
# =======================


# 8b    d8    db    88 88b 88     88""Yb 88""Yb  dP"Yb   dP""b8 88""Yb    db    8b    d8
# 88b  d88   dPYb   88 88Yb88     88__dP 88__dP dP   Yb dP   `" 88__dP   dPYb   88b  d88
# 88YbdP88  dP__Yb  88 88 Y88     88"""  88"Yb  Yb   dP Yb  "88 88"Yb   dP__Yb  88YbdP88
# 88 YY 88 dP""""Yb 88 88  Y8     88     88  Yb  YbodP   YboodP 88  Yb
# dP""""Yb 88 YY 88

# Main Program
if __name__ == "__main__":
    # Launch main menu
    # main_menu()
    db_conn = initalize_DB(DB_HOST, DB_USER, DB_PASSWD, DB_DBNAME)
    cur = create_cursor(db_conn)
    result = execute_command(cur, "SELECT * FROM `Customer`;")
    print(result)
