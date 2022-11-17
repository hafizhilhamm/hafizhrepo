#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include "turtlesim/Pose.h"
#include <iostream>

using namespace ros;

class Turtlevelo{
private:
Publisher publisher;
Subscriber subscriber;

public:
Turtlevelo(NodeHandle *nh){
publisher = nh->advertise<geometry_msgs::Twist>("turtle1/cmd_vel",0);
subscriber = nh->subscribe("turtle1/cmd_vel",1000,&Turtlevelo::velocitymsg,this);
}

void velocitymsg(const geometry_msgs::Twist& msg){
    ROS_INFO_STREAM("Linear x : " << msg.linear.x << " || " << " Angular z :" << msg.angular.z);
}
void message(){ 
    while(ok()){
    spinOnce();
    geometry_msgs::Twist msg;
    msg.linear.x=rand()%2;
    msg.angular.z=rand()%2;
    publisher.publish(msg);
    }
 }
};

int main(int argc, char **argv)
{
    init(argc,argv,"Turtlevelocity");
    NodeHandle nh;
    Turtlevelo nc = Turtlevelo(&nh);
    return 0;
}