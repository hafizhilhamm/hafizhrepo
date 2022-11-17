#include <ros/ros.h>
#include <geometry_msgs/Vector3.h>
#include <controller/PWM.h>

struct value{
    float velocx;
    float velocy;
    float velocz;
};

value motor_veloc;
ros::Publisher pub;

void velocityCallback(const geometry_msgs::Vector3ConstPtr veloc)
{
    motor_veloc.velocx = veloc->x;
    motor_veloc.velocy = veloc->y;   
    motor_veloc.velocz = veloc->z;
    ROS_INFO("velocity x y z : %f %f %f",motor_veloc.velocx,motor_veloc.velocy,motor_veloc.velocz);

    controller::PWM motor_pwm;
    motor_pwm.m1 = -0.70711 * motor_veloc.velocx + 0.70711 * motor_veloc.velocy + 0.01 * motor_veloc.velocz;
    motor_pwm.m2 = 0.70711 * motor_veloc.velocx + 0.70711 * motor_veloc.velocy + 0.01 * motor_veloc.velocz;
    motor_pwm.m3 = 0 * motor_veloc.velocx - 1 * motor_veloc.velocy + 0.01 * motor_veloc.velocz;

    pub.publish(motor_pwm);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "controlbot");
    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("robot/cmd",1,velocityCallback);
    
    pub = nh.advertise<controller::PWM>("/robot/pwm",1000);

    ros::spin();

    return 0;
}