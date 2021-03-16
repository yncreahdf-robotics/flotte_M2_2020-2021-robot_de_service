import mysql.connector
from datetime import datetime

hosts = open('/etc/hosts','r')
for line in hosts:
	splitted_line=line.split()
	try:
		if splitted_line[1]=="supIP":
			my_ip = splitted_line[0]
	except IndexError:
		pass
#########################################
##	Fonctions de Creation de la table  ##
#########################################

#	CREATE A NEW TABLE
def create_Robot_tb():
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")
		#status can be : Idle, Occupied, Pending, Maintenance
		mycursor.execute("CREATE TABLE IF NOT EXISTS Robot_tb (RobotIP VARCHAR(30) NOT NULL PRIMARY KEY, RobotType VARCHAR(30), Position INT, Etat VARCHAR(30), ActiveCommandNbr INT, LastCheck DATETIME, BatteryLevel INT, BatteryStatus VARCHAR(30))" ) 
		mycursor.close()
		flotte_db.close()
	except mysql.connector.Error as err:
		print(err)
		print("Something went wrong: {}".format(err))

#	CHECK IF THE TABLE EXISTS
def check_Robot_tb():	
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")
		mycursor.execute("SHOW TABLES")
		mycursor.close()
		flotte_db.close()
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))

###########################################
##	Fonctions de remplissage de la table ##
###########################################

#	INSERT RobotS IN THE COMMAND DATABASE
def insert_Robot(RobotIP, RobotType, Position, Etat, ActiveCommandNbr, LastCheck):
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		#need to verify that the RobotType is an existing Type in the  Type database
		sql="INSERT INTO Robot_tb (RobotIP, RobotType, Position, Etat, ActiveCommandNbr, LastCheck, BatteryLevel, BatteryStatus) VALUES(%s,%s,%s,%s,%s,%s,%s,%s)"
		val=(RobotIP, RobotType, Position, Etat, ActiveCommandNbr, LastCheck, -1, "Unknown")
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")
		mycursor.execute(sql,val)
		flotte_db.commit()
		flotte_db.close()
	except mysql.connector.Error as err:
		if(format(err).split()[0]=="1062"):
			pass
		else:
			print("Something went wrong: {}".format(err))

####################################
##	Fonctions d'acces a la table  ##
####################################

#	GET ALL ROBOTS
def get_all_Robot():
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql="SELECT * FROM Robot_tb ORDER BY RobotType"
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")
		mycursor.execute(sql)
		myresult=mycursor.fetchall()
		mycursor.close()
		flotte_db.close()
		return myresult 	
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))

#	GET A LIST OF ROBOTS BY ROLE
def find_robot_by_role(role):
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql = "SELECT RobotIP FROM Robot_tb INNER JOIN Type_tb ON Robot_tb.RobotType=Type_tb.TypeName WHERE Type_tb.Role= \""+ role+"\""
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")
		mycursor.execute(sql)
		myresult = mycursor.fetchall()
		mycursor.close()
		flotte_db.close()
		return myresult
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))

#	GET A LIST OF ROBOT BY ROLE AND STATUS
def find_robot_by_role_and_status(role, status):
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql="SELECT RobotIP FROM Robot_tb INNER JOIN Type_tb ON Robot_tb.RobotType=Type_tb.TypeName WHERE Type_tb.Role = \""+ role + "\" AND Etat = \"" + status + "\""
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")
		mycursor.execute(sql)
		myresult = mycursor.fetchall()
		mycursor.close()
		flotte_db.close()
		return myresult
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))

#GET A ROBOT BY ITS ROLE AND STATUS TO A CERTAIN POSITION
def find_robot_by_role_status_and_position(role, position, status):
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql="SELECT RobotIP FROM Robot_tb INNER JOIN Type_tb ON Robot_tb.RobotType=Type_tb.TypeName WHERE Type_tb.Role= \""+ role+ "\" AND Etat = \"" + status + "\" AND Position = \"" + position + "\""
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")	
		mycursor.execute(sql)
		myresult = mycursor.fetchall()
		mycursor.close()
		flotte_db.close()
		return myresult 
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))

#GET A ROBOT BY ITS ROLE AND STATUS TO A CERTAIN POSITION
def find_robot_by_CommandNbr_and_status(CommandNbr,status):
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql="SELECT RobotIP FROM Robot_tb WHERE ActiveCommandNbr= \""+ str(CommandNbr) + "\" AND Etat = \"" + status + "\""
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")	
		mycursor.execute(sql)
		myresult = mycursor.fetchall()
		mycursor.close()
		flotte_db.close()
		return myresult 
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))

#GET A ROBOTS DATA BY ITS IP
def get_robot_data(RobotIP):
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql="SELECT * FROM Robot_tb WHERE RobotIP=\""+ RobotIP + "\""
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")	
		mycursor.execute(sql)
		myresult = mycursor.fetchall()
		mycursor.close()
		flotte_db.close()
		return myresult
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))

#GET A ROBOT WEIGHT CAPACITY BY ITS IP
def get_robot_weight_capacity(RobotIP):
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql=" SELECT WeightCapacity from Type_tb INNER JOIN Robot_tb ON Type_tb.TypeName=Robot_tb.RobotType WHERE  Robot_tb.RobotIP =\""+ RobotIP + "\""
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")	
		mycursor.execute(sql)
		myresult = mycursor.fetchall()
		mycursor.close()
		flotte_db.close()
		return myresult
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))


#	GET A ROBOT BY ITS ACTIVE COMMAND NUMBER
def get_robot_by_ActiveCommand_and_type(ActiveCommandNbr, role):
	
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql= "SELECT RobotIP FROM Robot_tb INNER JOIN Type_tb ON Robot_tb.RobotType=Type_tb.TypeName WHERE Robot_tb.ActiveCommandNbr= \"" + str(ActiveCommandNbr) + "\" AND Type_tb.Role= \"" + role + "\""
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")	
		mycursor.execute(sql)
		myresult=mycursor.fetchall()
		mycursor.close()
		flotte_db.close()
		return myresult
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))

############################################
##	Fonctions de mise a jour de la table  ##
############################################

# UPDATE A ROBOT STATUS
def update_status(RobotIP, newStatus):
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql = "UPDATE Robot_tb SET Etat = \"" + newStatus + "\" WHERE RobotIP = \"" + str(RobotIP) + "\""
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")
		mycursor.execute(sql)
		flotte_db.commit()
		mycursor.close()
		flotte_db.close()
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))

#	UPDATE A ROBOT'S LAST POSITION
def update_position(RobotIP, newPosition):
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql = "UPDATE Robot_tb SET Position = \"" + newPosition + "\" WHERE RobotIP = \"" + str(RobotIP) + "\""
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")
		mycursor.execute(sql)
		flotte_db.commit()
		mycursor.close()
		flotte_db.close()
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))

#	UPDATE LAST CHECK OF ROBOT
def update_ping(RobotIP):
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql = "UPDATE Robot_tb SET LastCheck = \"" + str(datetime.now()) + "\" WHERE RobotIP = \"" + RobotIP + "\""
		val=datetime.now()
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")
		mycursor.execute(sql)
		flotte_db.commit()
		mycursor.close()
		flotte_db.close()
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))

#	UPDATE THE COMMAND THE ROBOT IS WORKING ON
def update_command(RobotIP, newCommandNbr):
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql = "UPDATE Robot_tb SET ActiveCommandNbr= \"" + str(newCommandNbr) + "\" WHERE RobotIP = \"" + RobotIP + "\""
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")
		mycursor.execute(sql)
		flotte_db.commit()
		mycursor.close()
		flotte_db.close()
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))

def update_battery(RobotIP, BatteryLevel, BatteryStatus):
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql = "UPDATE Robot_tb SET BatteryLevel= \"" + str(BatteryLevel) + "\" , BatteryStatus= \""+ BatteryStatus + "\" WHERE RobotIP = \"" + RobotIP + "\""
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")
		mycursor.execute(sql)
		flotte_db.commit()
		mycursor.close()
		flotte_db.close()
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))
#########################################################
##	Fonctions de suppression d'elements dans la table  ##
#########################################################

#	DELETE A Robot 
def delete_Robot(RobotIP):
	try:
		flotte_db=mysql.connector.connect(
			host='192.168.1.5',
			user='robot',
			password='robot'
		)
		sql="DELETE FROM Robot_tb WHERE RobotIP=\""+RobotIP+"\""
		mycursor=flotte_db.cursor()
		mycursor.execute("USE flotte_db")
		mycursor.execute(sql)
		flotte_db.commit()
		mycursor.close()
		flotte_db.close()
	except mysql.connector.Error as err:
		print("Something went wrong: {}".format(err))

