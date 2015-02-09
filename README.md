CP363 - Databases I - Final Project
==================

Wilfrid Laurier University - CP363 - Databases I - Inventory Management System Project

#####By: Ranadeep Polavarapu and Roman Lipisiy.


Technologies Used
=========
Frontend
-------------
* TBD

Backend
-------------
* nginx - Our primary webserver, acts as a reverse proxy with gunicorn, directly serves our static and media files. ([See our nginx files](webserver/nginx)).
* gunicorn - Python WSGI app server for Django.
* Django framework - For creating an API for this app that the frontend can consume.
* MySQL - our backend DB that is linked to Django.
* Python 3.4 with `virtualenv` to ensure that we can box and ship the backend with ease should we wish to do so.

Checklist
=========
Deadlines
-------------
*  [✔] Choose a project idea and get it approved.

Backend Server
-------------
IP: `104.236.198.237`  
SSH example: `ssh pola3120@104.236.198.237`  
Backend Source Folder: `/home/cp363/`  

Accounts and passwords:  
*	`pola3120`  
*	`lipi4200`  

Reminders
--------
Turn on swap file at `/swapfile` when server goes down for `shutdown` or `reboot`.
