#include <ros/ros.h>
#include <geometry_msgs/Vector3.h>
#include <controller/PWM.h>

struct MotorVel
{
    float vx;
    float vy;
    float vz;
};

MotorVel motor_vel;
ros::Publisher pub;

void velocityCallback(const geometry_msgs::Vector3ConstPtr vel)
{
    motor_vel.vx = vel->x;
    motor_vel.vy = vel->y;   
    motor_vel.vz = vel->z;

    ROS_INFO("velocity x y z : %f %f %f",motor_vel.vx,motor_vel.vy,motor_vel.vz);

    /*
    Forward kinematic
    q = B * V

    q = wheel speed

    | q1 |
    | q2 |
    | q3 |

    V = velocity

    | vx |
    | vy |
    | vw |

    B = transfer matrix

    |-cos(a) sin(a) L |
    | cos(a) sin(a) L |
    |   0      -1   L |

    Robot specification :
    L = 10 cm
    a = 45

    sin(a) = 0.70711
    cos(a) = 0.70711
    */
    controller::PWM motor_pwm;
    motor_pwm.m1 = -0.70711 * motor_vel.vx + 0.70711 * motor_vel.vy + 0.01 * motor_vel.vz;
    motor_pwm.m2 = 0.70711 * motor_vel.vx + 0.70711 * motor_vel.vy + 0.01 * motor_vel.vz;
    motor_pwm.m3 = 0 * motor_vel.vx - 1 * motor_vel.vy + 0.01 * motor_vel.vz;

    pub.publish(motor_pwm);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "robot_control");
    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("robot/cmd",1,velocityCallback);
    
    pub = nh.advertise<controller::PWM>("/robot/pwm",1000);

    ros::spin();

    return 0;
}