package copié de turtlebot kobuki (turtlebot_follower)
tentative d'adaptation incomplète

modifications:
 -Tous les chemins  turtlebot vers robotino
 -création du srv manquant "SetFollowState.srv" dans robotino_msgs
 -"robotino_node.launch" remplace "turtlebot_bringup/3dsensor.launch"
 -tentative d'activation de la caméra dans robotino_node avec "include realsens2_camera/rs_camera.launch"
 -modification du topic de follower.cpp de "depth/image_rect" à "depth/image_rect_raw"

le package compile mais il n'y a pas de retour dans l'invité de commande
 -ajout d'affichage de debug dans follower.cpp
mais rien ne change

faute de temps l'include de realsense2 est commenté car bloque le fonctionement des qrcodes 
