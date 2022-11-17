#include <ros/ros.h>
#include <std_msgs/String.h>

void pubSubCallback(const std_msgs::String::ConstPtr& msg){
    ROS_INFO("subscribe? %s", msg->data.c_str());
}

int main(int argc,char **argv)
{
    ros::init(argc, argv, "subscriber_node");
    ros::NodeHandle nh;

    ros::Subscriber subscriber = nh.subscribe("pub_sub/event_out", 1, pubSubCallback);
     ros::spin();
     return 0;
}