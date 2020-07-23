Last login: Tue Mar  3 13:03:19 on ttys001
Ranadeeps-MacBook-Pro:~ RanadeepPolavarapu$ cd Des
-bash: cd: Des: No such file or directory
Ranadeeps-MacBook-Pro:~ RanadeepPolavarapu$ cd Desktop/
Ranadeeps-MacBook-Pro:Desktop RanadeepPolavarapu$ ./cp363.sh 
spawn ssh pola3120@cp363.ff.gg
pola3120@cp363.ff.gg's password: 
Welcome to Ubuntu 14.10 (GNU/Linux 3.16.0-28-generic x86_64)

 * Documentation:  https://help.ubuntu.com/

  System information as of Tue Mar  3 16:08:32 EST 2015

  System load:  0.0                Processes:           82
  Usage of /:   30.7% of 19.56GB   Users logged in:     0
  Memory usage: 57%                IP address for eth0: 104.236.198.237
  Swap usage:   7%                 IP address for eth1: 10.132.107.77

  Graph this data and manage this system at:
    https://landscape.canonical.com/

9 packages can be updated.
7 updates are security updates.

Last login: Mon Mar  2 15:24:21 2015 from 216.249.49.37
pola3120@CP363:~$ sudo su
root@CP363:/home/pola3120# clear






















root@CP363:/home/pola3120# ls
root@CP363:/home/pola3120# cd /home/cp363/
root@CP363:/home/cp363# ls
copy-redundancy.sh  CP363-Databases-Project  inventory  make-swap-file.sh  productionenv
root@CP363:/home/cp363# source productionenv/bin/activate
(productionenv)root@CP363:/home/cp363# python
Python 3.4.2 (default, Oct  8 2014, 13:08:17) 
[GCC 4.9.1] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import MySQLdb
>>> db = MySQLdb.connect(user='root', host='localhost', passwd='tGuAyN8V4zujzJOz4Xg8')
>>> cursor = db.cursor()
>>> cursor.execute("SELECT version()")
1
>>> for item in cursor.fetch_all():
...    print(item)
... 
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AttributeError: 'Cursor' object has no attribute 'fetch_all'
>>> for item in cursor.fetch_all():
... 
  File "<stdin>", line 2
    
    ^
IndentationError: expected an indented block
>>> 
>>> for item in cursor.fetchall():
...    print(item)
... 
('5.6.19-1~exp1ubuntu2',)
>>> cursor.execute("SELECT * FROM Employee;")
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/home/cp363/productionenv/lib/python3.4/site-packages/MySQLdb/cursors.py", line 220, in execute
    self.errorhandler(self, exc, value)
  File "/home/cp363/productionenv/lib/python3.4/site-packages/MySQLdb/connections.py", line 36, in defaulterrorhandler
    raise errorvalue
  File "/home/cp363/productionenv/lib/python3.4/site-packages/MySQLdb/cursors.py", line 209, in execute
    r = self._query(query)
  File "/home/cp363/productionenv/lib/python3.4/site-packages/MySQLdb/cursors.py", line 371, in _query
    rowcount = self._do_query(q)
  File "/home/cp363/productionenv/lib/python3.4/site-packages/MySQLdb/cursors.py", line 335, in _do_query
    db.query(q)
  File "/home/cp363/productionenv/lib/python3.4/site-packages/MySQLdb/connections.py", line 280, in query
    _mysql.connection.query(self, query)
_mysql_exceptions.OperationalError: (1046, 'No database selected')
>>> db = MySQLdb.connect(user='root', host='localhost', passwd='tGuAyN8V4zujzJOz4Xg8', database='inventory_management'))
  File "<stdin>", line 1
    db = MySQLdb.connect(user='root', host='localhost', passwd='tGuAyN8V4zujzJOz4Xg8', database='inventory_management'))
                                                                                                                       ^
SyntaxError: invalid syntax
>>> db = MySQLdb.connect(user='root', host='localhost', passwd='tGuAyN8V4zujzJOz4Xg8', database='inventory_management')
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/home/cp363/productionenv/lib/python3.4/site-packages/MySQLdb/__init__.py", line 81, in Connect
    return Connection(*args, **kwargs)
  File "/home/cp363/productionenv/lib/python3.4/site-packages/MySQLdb/connections.py", line 204, in __init__
    super(Connection, self).__init__(*args, **kwargs2)
TypeError: 'database' is an invalid keyword argument for this function
>>> db = MySQLdb.connect(user='root', host='localhost', passwd='tGuAyN8V4zujzJOz4Xg8', db='inventory_management')
>>> cursor = db.cursor()
>>> cursor.execute("SELECT * FROM Employee;")
20
>>> for item in cursor.fetchall():
...    print(item)
... 
(0, 'F', datetime.date(1953, 8, 29), 42537.93, 1, 52, 21, 'Bobette', 'Kensey')
(1, 'M', datetime.date(1957, 6, 26), 125950.59, 1, 53, 2, 'Julee', 'Donald')
(2, 'M', datetime.date(1981, 11, 11), 203403.79, 1, 54, 2, 'Hayley', 'Najera')
(3, 'F', datetime.date(1970, 12, 17), 38662.71, 1, 55, 19, 'Alejandrina', 'Mastin')
(4, 'M', datetime.date(1946, 7, 12), 130533.97, 1, 56, 14, 'Douglass', 'Vallejo')
(5, 'F', datetime.date(1962, 7, 3), 117511.48, 1, 57, 16, 'Trey', 'Fomby')
(6, 'M', datetime.date(1956, 3, 24), 171832.04, 1, 58, 9, 'Lucina', 'Wison')
(7, 'M', datetime.date(1962, 6, 30), 150422.74, 1, 59, 4, 'Deetta', 'Hibbler')
(8, 'M', datetime.date(1954, 4, 10), 247706.98, 1, 60, 4, 'Mattie', 'Heffelfinger')
(9, 'F', None, 197508.08, 1, 61, 1, 'Shaun', 'Viers')
(10, 'M', datetime.date(1959, 11, 25), 60182.3, 1, 62, 1, 'Shonda', 'Tsai')
(11, 'F', None, 104050.0, 1, 63, 19, 'Glayds', 'Tawney')
(12, 'M', datetime.date(1987, 1, 8), 210533.92, 1, 64, 7, 'Sanjuanita', 'Charboneau')
(13, 'M', datetime.date(1963, 3, 13), 39787.11, 1, 65, 19, 'Kimiko', 'Penn')
(14, 'F', datetime.date(1953, 5, 3), 142675.37, 1, 66, 10, 'Nelle', 'Ellingwood')
(15, 'F', datetime.date(1990, 6, 30), 124375.1, 1, 67, 21, 'Sharolyn', 'Goe')
(16, 'M', datetime.date(1970, 6, 26), 144433.33, 1, 68, 15, 'Jolene', 'Sigmon')
(17, 'F', datetime.date(1971, 3, 26), 219655.42, 1, 69, 0, 'Candace', 'Sansom')
(18, 'M', None, 194831.6, 1, 70, 1, 'Jennine', 'Holts')
(19, 'F', datetime.date(1970, 2, 10), 241234.28, 1, 71, 0, 'Tom', 'Messana')
>>> cursor.execute("SELECT * FROM Store;")
25
>>> for item in cursor.fetchall():
...    print(item)
... 
(0, datetime.date(2014, 12, 15), 3953, 1, 3)
(1, datetime.date(1974, 2, 2), 14019, 1, 28)
(2, datetime.date(1966, 10, 17), 7533, 1, 29)
(3, datetime.date(2015, 3, 4), 14032, 1, 30)
(4, datetime.date(1987, 10, 27), 14606, 1, 31)
(5, datetime.date(1992, 5, 19), 10787, 1, 32)
(6, datetime.date(1975, 12, 3), 12247, 1, 33)
(7, datetime.date(1980, 4, 20), 9980, 1, 34)
(8, datetime.date(1979, 1, 25), 2846, 1, 35)
(9, datetime.date(1970, 5, 28), 7235, 1, 36)
(10, datetime.date(1948, 1, 26), 11267, 1, 37)
(11, datetime.date(2015, 3, 16), 4560, 1, 38)
(12, datetime.date(1971, 4, 6), 9713, 1, 39)
(13, datetime.date(1978, 5, 24), 4671, 1, 40)
(14, datetime.date(1957, 4, 10), 1006, 1, 41)
(15, datetime.date(1985, 6, 28), 9301, 1, 42)
(16, datetime.date(1974, 5, 7), 2475, 1, 43)
(17, datetime.date(1975, 8, 24), 9612, 1, 44)
(18, datetime.date(1984, 9, 4), 10363, 1, 45)
(19, datetime.date(1987, 8, 12), 10394, 1, 46)
(20, datetime.date(1979, 2, 18), 10977, 1, 47)
(21, datetime.date(1969, 1, 9), 11009, 1, 48)
(22, datetime.date(1963, 8, 19), 2255, 1, 49)
(23, datetime.date(1980, 12, 25), 8854, 1, 50)
(24, datetime.date(1977, 11, 15), 9460, 1, 51)
>>> cursor.execute("SELECT * FROM Customer;")
26
>>> for item in cursor.fetchall():
...    print(item)
... 
(0, 'M', datetime.date(1984, 9, 16), 0, 'John', 'Doe')
(1, 'F', datetime.date(1994, 5, 12), 1, 'Jane', 'Smith')
(2, 'F', datetime.date(1994, 4, 4), 2, 'James', 'Smith')
(3, 'F', datetime.date(1994, 3, 14), 4, 'Alex', 'Doe')
(4, 'M', datetime.date(1984, 9, 2), 5, 'Tiger', 'Woods')
(5, 'F', datetime.date(1978, 3, 25), 6, 'Sam', 'Tiger')
(6, 'F', datetime.date(1964, 3, 2), 7, 'Dwana', 'Bracco')
(7, 'M', datetime.date(1945, 9, 28), 8, 'Olen', 'Key')
(8, 'M', datetime.date(1993, 4, 23), 9, 'Millicent', 'Tran')
(9, 'F', datetime.date(1970, 3, 10), 10, 'Alma', 'Mcgary')
(10, 'F', datetime.date(1992, 9, 25), 11, 'Golden', 'Pettitt')
(11, 'M', datetime.date(1968, 6, 3), 12, 'Basil', 'Flannagan')
(12, 'M', datetime.date(1952, 6, 10), 13, 'Shyla', 'Marcella')
(13, 'F', datetime.date(1978, 1, 30), 14, 'Larraine', 'Im')
(14, 'F', datetime.date(1955, 5, 6), 15, 'Rayna', 'Costello')
(15, 'M', datetime.date(1993, 2, 1), 16, 'Ray', 'Cassette')
(16, 'F', None, 17, 'Karena', 'Goolsby')
(17, 'F', datetime.date(1963, 1, 6), 18, 'Heidi', 'Maury')
(18, 'M', datetime.date(1990, 4, 26), 19, 'Nakesha', 'Mericle')
(19, 'M', datetime.date(1971, 12, 1), 20, 'Aline', 'Wellman')
(20, 'M', datetime.date(1990, 8, 18), 21, 'Chery', 'Letellier')
(21, 'M', datetime.date(1991, 5, 23), 22, 'Daren', 'Filippone')
(22, 'M', datetime.date(1957, 2, 7), 23, 'Melony', 'Rapozo')
(23, 'M', datetime.date(1985, 7, 8), 24, 'Augustine', 'Gushiken')
(24, 'F', datetime.date(1993, 6, 2), 25, 'Arcelia', 'Mcnichols')
(25, 'M', datetime.date(1945, 12, 16), 26, 'Terrie', 'Rahimi')
>>> cursor.execute("SELECT * FROM Address;")
159
>>> for item in cursor.fetchall():
...    print(item)
... 
(0, 'University', 'Waterloo', 'Canada', 'Ontario', 'N2J 3B9')
(1, 'King Street', 'Waterloo', 'Canada', 'Ontario', 'N2J 3BC')
(2, 'Younge Street', 'Toronto', 'Canada', 'Ontario', 'N2J 3L9')
(3, 'Dundas Street', 'Toronto', 'Canada', 'Ontario', 'N2I 2M9')
(4, 'King Street', 'Toronto', 'Canada', 'Ontario', 'C2I 2M9')
(5, 'Queen Street', 'Toronto', 'Canada', 'Ontario', 'L2I 2M9')
(6, 'Burhamthorpe Street', 'Toronto', 'Canada', 'Ontario', 'A2I 2M9')
(7, 'Main Street', 'Milton', 'Canada', 'Ontario', 'L9T 0K3')
(8, 'Millbrook Avenue', 'Milton', 'Canada', 'Ontario', 'L9T 0D1')
(9, 'Hespeler Street', 'Kitchener', 'Canada', 'Ontario', 'N9T 0D1')
(10, 'Hurontario Street', 'Mississauga', 'Canada', 'Ontario', 'H9T 0D1')
(11, 'Hazel Street', 'Waterloo', 'Canada', 'Ontario', 'N2C J4C')
(12, 'Marshal Street', 'Waterloo', 'Canada', 'Ontario', 'N2C J6C')
(13, 'balmier street', 'Barrie', 'Canada', 'Ontario', 'M6B J7H')
(14, 'dor street', 'Milton', 'Canada', 'Ontario', 'A1P Q0K')
(15, 'sloking street', 'Milton', 'Canada', 'Ontario', 'T7F G2X')
(16, 'hocussing street', 'Milton', 'Canada', 'Ontario', 'P9F H4D')
(17, 'chishima street', 'Oakville', 'Canada', 'Ontario', 'B2D O7N')
(18, 'spinnability street', 'Owen Sound', 'Canada', 'Ontario', 'T0F H9H')
(19, 'renoticing street', 'Barrie', 'Canada', 'Ontario', 'S2P X8N')
(20, 'tana street', 'Owen Sound', 'Canada', 'Ontario', 'M6S O5P')
(21, 'crowfoot street', 'Owen Sound', 'Canada', 'Ontario', 'G3X G0L')
(22, 'innumerably street', 'Toronto', 'Canada', 'Ontario', 'P2X H0T')
(23, 'reorchestration street', 'Barrie', 'Canada', 'Ontario', 'N7D Z5H')
(24, 'counterfoil street', 'Owen Sound', 'Canada', 'Ontario', 'H9C U4H')
(25, 'screamingly street', 'Owen Sound', 'Canada', 'Ontario', 'Y1S W6Z')
(26, 'misorganized street', 'Barrie', 'Canada', 'Ontario', 'L8M B4X')
(27, 'postmainship street', 'Waterloo', 'Canada', 'Ontario', 'T6X C7C')
(28, 'diazotize street', 'Milton', 'Canada', 'Ontario', 'U1V M3I')
(29, 'difficultly street', 'Toronto', 'Canada', 'Ontario', 'B5C M9A')
(30, 'chylophyllously street', 'Waterloo', 'Canada', 'Ontario', 'C8S W1R')
(31, 'unfissile street', 'Oakville', 'Canada', 'Ontario', 'P3L Z3E')
(32, 'alkalinising street', 'Owen Sound', 'Canada', 'Ontario', 'J8L A4X')
(33, 'green street', 'Waterloo', 'Canada', 'Ontario', 'T0R X3E')
(34, 'incidence street', 'Oakville', 'Canada', 'Ontario', 'H7B K2C')
(35, 'forcingly street', 'Barrie', 'Canada', 'Ontario', 'T5U C0X')
(36, 'kalifate street', 'Oakville', 'Canada', 'Ontario', 'L1A M5N')
(37, 'trinacria street', 'Oakville', 'Canada', 'Ontario', 'B9S J8K')
(38, 'amygdalic street', 'Owen Sound', 'Canada', 'Ontario', 'D0F Y4O')
(39, 'unvoting street', 'Oakville', 'Canada', 'Ontario', 'M3U G3I')
(40, 'evasion street', 'Barrie', 'Canada', 'Ontario', 'Y2D Q2F')
(41, 'jalousie street', 'Oakville', 'Canada', 'Ontario', 'W0M R4F')
(42, 'circinately street', 'Milton', 'Canada', 'Ontario', 'Q5Q F9F')
(43, 'justicoat street', 'Barrie', 'Canada', 'Ontario', 'Q6C W9Z')
(44, 'unlive street', 'Milton', 'Canada', 'Ontario', 'U3K F8K')
(45, 'detonative street', 'Toronto', 'Canada', 'Ontario', 'B2U D7V')
(46, 'unmelodic street', 'Milton', 'Canada', 'Ontario', 'G9S Q8G')
(47, 'homocentrical street', 'Waterloo', 'Canada', 'Ontario', 'M6R S4U')
(48, 'cancelling street', 'Owen Sound', 'Canada', 'Ontario', 'K3F E4N')
(49, 'rampingly street', 'Milton', 'Canada', 'Ontario', 'X2O F5U')
(50, 'leapfrogger street', 'Barrie', 'Canada', 'Ontario', 'H0H O1X')
(51, 'inspissated street', 'Waterloo', 'Canada', 'Ontario', 'Y3X C7W')
(52, 'kaluga street', 'Oakville', 'Canada', 'Ontario', 'D8V N0Z')
(53, 'tick street', 'Barrie', 'Canada', 'Ontario', 'R3K F6V')
(54, 'cranwell street', 'Barrie', 'Canada', 'Ontario', 'Y0X N0O')
(55, 'gering street', 'Barrie', 'Canada', 'Ontario', 'S9F T5R')
(56, 'overcautious street', 'Milton', 'Canada', 'Ontario', 'Y4R O8G')
(57, 'moorland street', 'Barrie', 'Canada', 'Ontario', 'H8Y X0L')
(58, 'diaconicum street', 'Oakville', 'Canada', 'Ontario', 'V3D A9T')
(59, 'jobbery street', 'Milton', 'Canada', 'Ontario', 'T8I A0K')
(60, 'anilin street', 'Oakville', 'Canada', 'Ontario', 'I4R L3C')
(61, 'rheometer street', 'Owen Sound', 'Canada', 'Ontario', 'V1R L4M')
(62, 'outflew street', 'Toronto', 'Canada', 'Ontario', 'Y3Z E2T')
(63, 'sulfate street', 'Owen Sound', 'Canada', 'Ontario', 'T6J X6V')
(64, 'financier street', 'Waterloo', 'Canada', 'Ontario', 'V8D B2M')
(65, 'denigrating street', 'Waterloo', 'Canada', 'Ontario', 'D7N G9S')
(66, 'lvov street', 'Barrie', 'Canada', 'Ontario', 'T1Y X9P')
(67, 'sclerosed street', 'Toronto', 'Canada', 'Ontario', 'E7J Y5P')
(68, 'bullfighting street', 'Milton', 'Canada', 'Ontario', 'E9N H5N')
(69, 'anabas street', 'Barrie', 'Canada', 'Ontario', 'O2X R5E')
(70, 'fuzing street', 'Oakville', 'Canada', 'Ontario', 'T4D R2U')
(71, 'unlevelled street', 'Waterloo', 'Canada', 'Ontario', 'B2H H9X')
(72, 'mastless street', 'Milton', 'Canada', 'Ontario', 'X2V O2U')
(73, 'flora street', 'Owen Sound', 'Canada', 'Ontario', 'N1T G4P')
(74, 'intestate street', 'Waterloo', 'Canada', 'Ontario', 'X6T O0W')
(75, 'conducer street', 'Milton', 'Canada', 'Ontario', 'W8C J5R')
(76, 'whimsicalness street', 'Owen Sound', 'Canada', 'Ontario', 'S1V G8T')
(77, 'preexpansion street', 'Oakville', 'Canada', 'Ontario', 'Y6Z M0G')
(78, 'grilse street', 'Waterloo', 'Canada', 'Ontario', 'U0I R9C')
(79, 'porphyropsin street', 'Oakville', 'Canada', 'Ontario', 'U4R V3G')
(80, 'hire street', 'Barrie', 'Canada', 'Ontario', 'W3D V6S')
(81, 'cranmer street', 'Waterloo', 'Canada', 'Ontario', 'V1Z Z0H')
(82, 'unwagged street', 'Waterloo', 'Canada', 'Ontario', 'N6Q O1V')
(83, 'negritised street', 'Barrie', 'Canada', 'Ontario', 'A6E Y8I')
(84, 'hespere street', 'Waterloo', 'Canada', 'Ontario', 'P7N H0H')
(85, 'inscriber street', 'Oakville', 'Canada', 'Ontario', 'N3N O2A')
(86, 'bedfast street', 'Oakville', 'Canada', 'Ontario', 'N7D I4P')
(87, 'pimpernel street', 'Barrie', 'Canada', 'Ontario', 'L2X J4S')
(88, 'gyor street', 'Owen Sound', 'Canada', 'Ontario', 'N7O W3X')
(89, 'bestialise street', 'Waterloo', 'Canada', 'Ontario', 'D4V I0B')
(90, 'coccyx street', 'Owen Sound', 'Canada', 'Ontario', 'Z2T U5F')
(91, 'sombrous street', 'Milton', 'Canada', 'Ontario', 'S3Y Q6D')
(92, 'stalagmite street', 'Toronto', 'Canada', 'Ontario', 'O9W K4K')
(93, 'marble street', 'Toronto', 'Canada', 'Ontario', 'O4S Z3N')
(94, 'overfar street', 'Oakville', 'Canada', 'Ontario', 'N7Z Y8W')
(95, 'mithridatised street', 'Owen Sound', 'Canada', 'Ontario', 'W8Q A8L')
(96, 'snow street', 'Toronto', 'Canada', 'Ontario', 'M2L C3E')
(97, 'gerd street', 'Toronto', 'Canada', 'Ontario', 'S4S U8V')
(98, 'cymosely street', 'Owen Sound', 'Canada', 'Ontario', 'H1R D8T')
(99, 'massawa street', 'Owen Sound', 'Canada', 'Ontario', 'U7M Y0T')
(100, 'sanguinolent street', 'Barrie', 'Canada', 'Ontario', 'Y6Z D2Q')
(101, 'hezekiah street', 'Toronto', 'Canada', 'Ontario', 'F2B U7N')
(102, 'unraised street', 'Toronto', 'Canada', 'Ontario', 'D4M I3B')
(103, 'pentathlon street', 'Barrie', 'Canada', 'Ontario', 'K1I W1N')
(104, 'windowpane street', 'Milton', 'Canada', 'Ontario', 'A9N W0K')
(105, 'reflux street', 'Milton', 'Canada', 'Ontario', 'N8W F4K')
(106, 'moniker street', 'Barrie', 'Canada', 'Ontario', 'I3T G9C')
(107, 'snickersnee street', 'Waterloo', 'Canada', 'Ontario', 'K2W V0F')
(108, 'natal street', 'Milton', 'Canada', 'Ontario', 'X1I C0K')
(109, 'menshevism street', 'Milton', 'Canada', 'Ontario', 'M7B K6Y')
(110, 'gaudiness street', 'Toronto', 'Canada', 'Ontario', 'P8T G9V')
(111, 'dispraise street', 'Milton', 'Canada', 'Ontario', 'C7U K2I')
(112, 'fritted street', 'Toronto', 'Canada', 'Ontario', 'S6K J5Z')
(113, 'manichee street', 'Barrie', 'Canada', 'Ontario', 'Y8C K8D')
(114, 'uremic street', 'Toronto', 'Canada', 'Ontario', 'P2E M0Q')
(115, 'hordein street', 'Milton', 'Canada', 'Ontario', 'G5Z W1Z')
(116, 'reheating street', 'Owen Sound', 'Canada', 'Ontario', 'Z2M N4Z')
(117, 'wellsite street', 'Owen Sound', 'Canada', 'Ontario', 'U5X Z3D')
(118, 'aforementioned street', 'Milton', 'Canada', 'Ontario', 'T1F O4Y')
(119, 'necessaries street', 'Barrie', 'Canada', 'Ontario', 'B3S T2F')
(120, 'prologise street', 'Oakville', 'Canada', 'Ontario', 'Z3A V4G')
(121, 'hispania street', 'Toronto', 'Canada', 'Ontario', 'T3F L4R')
(122, 'ignescent street', 'Toronto', 'Canada', 'Ontario', 'Q1Q J1O')
(123, 'deathday street', 'Toronto', 'Canada', 'Ontario', 'I3M N0T')
(124, 'stupe street', 'Oakville', 'Canada', 'Ontario', 'L0U S8J')
(125, 'koncaved street', 'Owen Sound', 'Canada', 'Ontario', 'Q9W P2A')
(126, 'mulhac street', 'Waterloo', 'Canada', 'Ontario', 'O4K T6B')
(127, 'midgarth street', 'Waterloo', 'Canada', 'Ontario', 'E3Z G9J')
(128, 'outburning street', 'Milton', 'Canada', 'Ontario', 'S7X X3M')
(129, 'bryansk street', 'Milton', 'Canada', 'Ontario', 'U9C X4J')
(130, 'integrator street', 'Barrie', 'Canada', 'Ontario', 'Q2T W8Q')
(131, 'erotesis street', 'Owen Sound', 'Canada', 'Ontario', 'X7I E1U')
(132, 'overgamble street', 'Milton', 'Canada', 'Ontario', 'V0F O3P')
(133, 'lomax street', 'Waterloo', 'Canada', 'Ontario', 'R7O J0Z')
(134, 'activizing street', 'Waterloo', 'Canada', 'Ontario', 'G0R C0A')
(135, 'hunkers street', 'Owen Sound', 'Canada', 'Ontario', 'R3U E9V')
(136, 'tenebrae street', 'Barrie', 'Canada', 'Ontario', 'Q4K G8F')
(137, 'wageless street', 'Waterloo', 'Canada', 'Ontario', 'Q6B C1A')
(138, 'southwestwards street', 'Toronto', 'Canada', 'Ontario', 'U7X F7K')
(139, 'cytissorus street', 'Waterloo', 'Canada', 'Ontario', 'G1Q Z6V')
(140, 'gamine street', 'Waterloo', 'Canada', 'Ontario', 'V5Q Q1E')
(141, 'astable street', 'Owen Sound', 'Canada', 'Ontario', 'R3S S1B')
(142, 'unmarled street', 'Waterloo', 'Canada', 'Ontario', 'T1M N4D')
(143, 'swede street', 'Oakville', 'Canada', 'Ontario', 'F3O B5N')
(144, 'scincoid street', 'Oakville', 'Canada', 'Ontario', 'T2N M2R')
(145, 'formalness street', 'Owen Sound', 'Canada', 'Ontario', 'B9C Z3F')
(146, 'interruptive street', 'Oakville', 'Canada', 'Ontario', 'U6F J9Z')
(147, 'matronhood street', 'Oakville', 'Canada', 'Ontario', 'U9C O8A')
(148, 'cockishness street', 'Barrie', 'Canada', 'Ontario', 'L0L M3P')
(149, 'swordless street', 'Waterloo', 'Canada', 'Ontario', 'U8Q G1P')
(150, 'seller street', 'Waterloo', 'Canada', 'Ontario', 'N3P V0H')
(151, 'achaian street', 'Owen Sound', 'Canada', 'Ontario', 'W0F T0V')
(152, 'matozinhos street', 'Waterloo', 'Canada', 'Ontario', 'R7U E4Y')
(153, 'integrate street', 'Milton', 'Canada', 'Ontario', 'M6X Y7U')
(154, 'outtraded street', 'Owen Sound', 'Canada', 'Ontario', 'M9G I4D')
(155, 'kipnis street', 'Milton', 'Canada', 'Ontario', 'P2C Y7E')
(156, 'warriorlike street', 'Owen Sound', 'Canada', 'Ontario', 'K4D T0V')
(157, 'unbrutalize street', 'Milton', 'Canada', 'Ontario', 'T4V H4T')
(158, 'bourges street', 'Milton', 'Canada', 'Ontario', 'Q3B Q5E')
>>> cursor.close()
>>> db.close()
