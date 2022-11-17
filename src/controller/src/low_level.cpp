#include <ros/ros.h>
#include <std_msgs/String.h>
#include <fukuro_common/SerialData.h>
#include <controller/PWM.h>

struct Motor
{
    float m1;
    float m2;
    float m3;
};

class LowLevelController
{
    public:
        LowLevelController(ros::NodeHandle& nh_);
        void process();
        void updatePWM(const controller::PWMConstPtr & pwm);

    private:
        ros::NodeHandle& nh;
        ros::Publisher pub;

        Motor motor;

        void setMotorPWM(float,float,float);
};

LowLevelController::LowLevelController(ros::NodeHandle& nh_) :
nh(nh_)
{
    pub = nh.advertise<fukuro_common::SerialData>("/stm/motor",1000);

    setMotorPWM(0.0,0.0,0.0);
}

void LowLevelController::updatePWM(const controller::PWMConstPtr & pwm)
{
    setMotorPWM(pwm->m1,pwm->m2,pwm->m3);
}

void LowLevelController::process()
{
    fukuro_common::SerialData motor_pwm;
    motor_pwm.motor.m1 = motor.m1;
    motor_pwm.motor.m2 = motor.m2;
    motor_pwm.motor.m3 = motor.m3;

    pub.publish(motor_pwm);
}

void LowLevelController::setMotorPWM(float m1,float m2 ,float m3)
{
    motor.m1 = m1;
    motor.m2 = m2;
    motor.m3 = m3;
}

int main(int argc, char**argv)
{
    ros::init(argc,argv,"low_level_controller");
    ros::NodeHandle nh;
    ros::AsyncSpinner spinner(6);
    ros::Rate lr(30);

    LowLevelController lc(nh);

    ros::Subscriber pwm_sub = nh.subscribe("/robot/pwm",1,&LowLevelController::updatePWM,&lc);

    spinner.start();

    while(ros::ok())
    {
        lc.process();
        lr.sleep();
    }

    ros::waitForShutdown();

    return 0;
}