#!/usr/bin/env python3
# -*- coding: utf-8 -*-


import sys
import os
import platform

try:
    import MySQLdb
except ImportError as e:
    print("ERROR: MySQLdb (MySQL Python3 connector) is not installed. Please install by doing \"pip3 install mysqlclient\".",
          file=sys.stderr)
    sys.exit(1)


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
    print("1. Menu 1")
    print("2. Menu 2")
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
    main_menu()
