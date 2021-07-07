import mysql.connector
from datetime import datetime



#	CREATE A NEW TABLE
def create_Robot_tb(mycursor):
	mycursor.execute("CREATE TABLE IF NOT EXISTS Robot_tb (RobotIP VARCHAR(30) NOT NULL PRIMARY KEY, RobotType VARCHAR(30), Position VARCHAR(30), Etat VARCHAR(30), LastCheck DATETIME)" ) 

#	CHECK IF THE TABLE EXISTS
def check_Robot_tb(mycursor):	
	mycursor.execute("SHOW TABLES")

#	INSERT RobotS IN THE COMMAND DATABASE
def insert_Robot(flotte_db, RobotIP, RobotType, Position, Etat, LastCheck):
	#need to verify that the RobotType is an existing Type in the  Type database
	sql="INSERT INTO Robot_tb (RobotIP, RobotType, Position, Etat, LastCheck) VALUES(%s,%s,%s,%s,%s)"
	val=(RobotIP, RobotType, Position, Etat, LastCheck)
	mycursor=flotte_db.cursor()
	mycursor.execute(sql,val)
	flotte_db.commit()

#	GET ALL POSSIBLE RobotS
def get_all_Robot(mycursor):
	sql="SELECT * FROM Robot_tb ORDER BY RobotType"
	mycursor.execute(sql)
	myresult=mycursor.fetchall()
	return myresult


#	GET A Robot BY ITS NAME
def get_Robot_by_name(mycursor, RobotType):
	sql = "SELECT * FROM Robot_tb WHERE RobotName= \""+ RobotName +"\" IF EXISTS"
	mycursor.execute(sql)
	myresult = mycursor.fetchall()


#	GET A FREE ROBOT BY ITS FUNCTIONNALITY
def get_free_Robot(mycursor, RobotType):
	sql="SELECT * FROM Robot_tb WHERE Etat = 'Idle' AND RobotType = \""+ RobotType +"\""
	mycursor.execute(sql)
	myresult = mycursor.fetchall()
	return myresult


#	Find A ROBOT BY ROLE
def find_Robot_by_role(mycursor,role):
	sql = "SELECT RobotIP FROM Robot_tb INNER JOIN Type_tb ON Robot_tb.RobotType=Type_tb.TypeName WHERE Type_tb.Role= \""+ role+"\""
	mycursor.execute(sql)
	myresult = mycursor.fetchall()
	return myresult


#	UPDATE LAST CHECK OF ROBOT
def update_ping(flotte_db, RobotIP):
	sql = "UPDATE Robot_tb SET LastCheck = \"" + str(datetime.now()) + "\" WHERE RobotIP = \"" + RobotIP + "\""
	val=datetime.now()
	mycursor=flotte_db.cursor()
	mycursor.execute(sql)
	flotte_db.commit()
	mycursor.execute(sql)


#	DELETE A Robot
def delete_Robot(flotte_db, RobotIP):
	sql="DELETE FROM Robot_tb WHERE RobotIP=\""+RobotIP+"\""
	mycursor=flotte_db.cursor()
	mycursor.execute(sql)
	flotte_db.commit()


