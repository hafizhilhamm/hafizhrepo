#include <ros/ros.h>
#include <std_msgs/String.h>
#include <geometry_msgs/Vector3.h>
#include <unistd.h>
#include <termios.h>
#include <iostream>
#include <stdio.h>  
using namespace std;


int main(int argc, char **argv)
{
    ros::init(argc, argv, "high_level_controller");
    ros::NodeHandle node;
    ros::Publisher pub = node.advertise<geometry_msgs::Vector3>("/robot/cmd",1000);
    ros::Rate lr(30);
    char c;
    float speed = 0.5;
    float aspeed = 15;
    bool quit=false;

    while(ros::ok() && !quit)
    {
        geometry_msgs::Vector3 msg;
        msg.x = 0.0;
        msg.y = 0.0;
        msg.z = 0.0;

        system("stty raw"); 
        char input = getchar(); 
        c=input;
        system("stty cooked"); 

        switch(c)
        {
            case 'w':
                msg.x = speed;
                msg.y = 0.0;
                msg.z = 0.0;
                cout<<"FORWARD!"<<endl;
                break;
            case 'a':
                msg.x = 0.0;
                msg.y = speed;
                msg.z = 0.0;
                cout<<"LEFT!"<<endl;
                break;
            case 'd':
                msg.x = 0.0;
                msg.y = -speed;
                msg.z = 0.0;
                cout<<"RIGHT!"<<endl;
                break;
            case 's':
                msg.x = -speed;
                msg.y = 0.0;
                msg.z = 0.0;
                cout<<"REVERSE!"<<endl;
                break;
            case 'c':
                msg.x = 0.0;
                msg.y = 0.0;
                msg.z = aspeed;
                cout<<"ROTATE RIGHT!"<<endl;
                break;
            case 'z':
                msg.x = 0.0;
                msg.y = 0.0;
                msg.z = -aspeed;
                cout<<"ROTATE LEFT!"<<endl;
                break;
            case ' ':
                msg.x = 0.0;
                msg.y = 0.0;
                msg.z = 0.0;
                cout<<"STOP!"<<endl;
                break;
            case 'q':
                cout<<"QUIT!"<<endl;
                quit=true;
                break;
            default:
                cout<<"NOT MAPPED!"<<endl;
        }

        pub.publish(msg);
        ros::spinOnce();
        lr.sleep();
    }
    return 0;
}