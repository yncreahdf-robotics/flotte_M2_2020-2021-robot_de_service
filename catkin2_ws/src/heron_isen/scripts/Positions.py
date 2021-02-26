import mysql.connector
from datetime import datetime


#########################################
##	Fonctions de creation de la table  ##
#########################################

#	CREATE A NEW TABLE
def create_Pose_tb(flotte_db):
	mycursor=flotte_db.cursor()
	mycursor.execute("CREATE TABLE IF NOT EXISTS Pose_tb (PoseID INT AUTO_INCREMENT, PoseName VARCHAR(30), PoseX FLOAT, PoseY FLOAT, PoseZ FLOAT, PoseW FLOAT, CONSTRAINT PoseID_pk PRIMARY KEY (PoseID))" ) 
	mycursor.close()

#	CHECK IF THE TABLE EXISTS
def check_Pose_tb(flotte_db):
	mycursor=flotte_db.cursor()	
	mycursor.execute("SHOW TABLES")
	for x in mycursor:
		print(x)
	mycursor.close()


############################################
##  Fonctions de remplissage de la table  ##
############################################

#	INSERT POSES IN THE COMMAND DATABASE
def insert_Pose(flotte_db, PoseName, PoseX, PoseY, PoseZ, PoseW):
	sql="INSERT INTO Pose_tb (PoseName, PoseX, PoseY, PoseZ, PoseW) VALUES(%s,%s,%s,%s,%s)"
	val=(PoseName, PoseX, PoseY, PoseZ, PoseW)
	mycursor=flotte_db.cursor()
	mycursor.execute(sql,val)
	flotte_db.commit()
	print("BDD:     ", mycursor.rowcount,"Pose ajoutee")
	mycursor.close()


###################################
##  Fonctions d'acces a la table ##
###################################

#	GET ALL POSSIBLE POSES
def get_all_Pose(flotte_db):
	sql="SELECT * FROM Pose_tb ORDER BY PoseName"
	mycursor=flotte_db.cursor()
	mycursor.execute(sql)
	myresult=mycursor.fetchall()
	for x in myresult:
		print(x)
	mycursor.close()

#	GET A POSE BY ITS NAME
def get_Pose_by_name(flotte_db, PoseName):
	sql = "SELECT PoseID FROM Pose_tb WHERE PoseName=\"" + PoseName + "\""
	mycursor=flotte_db.cursor()
	mycursor.execute(sql)
	myresult = mycursor.fetchall()
	mycursor.close()
	return myresult


#	GET A POSE'S DATA
def get_Pose(flotte_db,PoseID):
	sql="SELECT PoseX, PoseY, PoseZ, PoseW FROM Pose_tb WHERE PoseID = \"" + PoseID + "\""
	mycursor=flotte_db.cursor()
	mycursor.execute(sql)
	myresult=mycursor.fetchall()
	mycursor.close()
	return myresult



###############################
##  Fonction de suppression  ##
###############################

#	DELETE A Pose
def delete_Pose(flotte_db, PoseName):
	sql="DELETE FROM Pose_tb WHERE PoseName=" + PoseName
	mycursor=flotte_db.cursor()
	mycursor.execute(sql)
	flotte_db.commit()
	print("BDD:		", mycursor.rowcount,"Pose deleted")
	mycursor.close()



