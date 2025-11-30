#include "ros/ros.h"
#include "std_msgs/Float64.h"


double current_voltage = 0.0;


void voltageCallback(const std_msgs::Float64::ConstPtr& msg)
{

    current_voltage = msg->data;
}


int main(int argc, char **argv)
{
    ros::init(argc, argv, "simulator_node");

    ros::NodeHandle nh;

    ros::Subscriber voltage_sub = nh.subscribe("/motor_voltage", 10, voltageCallback);

    ros::Publisher speed_pub = nh.advertise<std_msgs::Float64>("/motor_speed", 10);

    ros::Rate loop_rate(100);


    double current_I = 0.0;
    double current_omega = 0.0;
    double dt = 0.01;


    double R = 1.0;
    double L = 0.5;
    double J = 0.01;
    double b = 0.1;
    double K_e = 0.01;
    double K_t = 0.01;
    ROS_INFO("Simulator node started. Waiting for voltage input...");


    while (ros::ok())
    {

        double dIdt = (current_voltage - R * current_I - K_e * current_omega) / L;
        double domega_dt = (K_t * current_I - b * current_omega) / J;

        current_I = current_I + dIdt * dt;
        current_omega = current_omega + domega_dt * dt;
        
	double rpm = current_omega * 60.0/(2.0*3.14);
	
        std_msgs::Float64 speed_msg;
        speed_msg.data = rpm;
        speed_pub.publish(speed_msg);


        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
