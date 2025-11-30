#include "ros/ros.h"
#include "std_msgs/Float64.h"

double desired_speed = 10.0;
double actual_speed = 0.0;
double Kp = 10.0;

void speedCallback(const std_msgs::Float64::ConstPtr& msg)
{
    actual_speed = msg->data;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "controller_node");

    ros::NodeHandle nh;
    
    desired_speed = atof(argv[1]);
 
    ROS_INFO("Controller node started with Kp = %f, Desired Speed = %f", Kp, desired_speed);

    ros::Subscriber speed_sub = nh.subscribe("/motor_speed", 10, speedCallback);

    ros::Publisher voltage_pub = nh.advertise<std_msgs::Float64>("/motor_voltage", 10);

    ros::Rate loop_rate(100);

    while (ros::ok())
    {
        double error = desired_speed - actual_speed;

        double voltage_command = Kp * error;

        // double max_voltage = 12.0;
        // if (voltage_command > max_voltage) voltage_command = max_voltage;
        // if (voltage_command < -max_voltage) voltage_command = -max_voltage;

        std_msgs::Float64 voltage_msg;
        voltage_msg.data = voltage_command;
        voltage_pub.publish(voltage_msg);

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
