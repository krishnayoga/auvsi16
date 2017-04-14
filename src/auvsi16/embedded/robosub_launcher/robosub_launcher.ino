#include <ros.h>
#include <auvsi16/RobosubLauncher.h>

int MPWM  = 11;
int MIN1  = 9;
int MIN2  = 10;
int MEN1  = 5;
int MEN2  = 6;
int MCS   = A6;
int HEATER = A1;
ros::NodeHandle  nh;


void messageCb( const auvsi16::RobosubLauncher& msg){

  // Motor move forward
  if(msg.motor_direction == 1){
    digitalWrite(MIN1,HIGH);
    digitalWrite(MIN2,LOW);
    analogWrite(MPWM, msg.motor_speed);
  }

  // Motor move backward
  else if(msg.motor_direction == 2){
    digitalWrite(MIN1,LOW);
    digitalWrite(MIN2,HIGH);
    analogWrite(MPWM, msg.motor_speed);
  }
  
    // Motor on OPEN state
  else {
    digitalWrite(MIN1,LOW);
    digitalWrite(MIN2,LOW);
    digitalWrite(MPWM, LOW);
  }
  
  
  if (msg.launcher_heater){
    digitalWrite(HEATER,LOW);
  }else {
    digitalWrite(HEATER,HIGH);
  }

}

ros::Subscriber<auvsi16::RobosubLauncher> sub_robosub_launcher("/auvsi16/robosub/launcher/control", messageCb );

void setup()
{
  pinMode(MPWM, OUTPUT);
  pinMode(MIN1, OUTPUT);
  pinMode(MIN2, OUTPUT);
  pinMode(MEN1, OUTPUT);
  pinMode(MEN2, OUTPUT);
  pinMode(MCS, INPUT);
  pinMode(HEATER, OUTPUT);
  digitalWrite(MEN1, HIGH);
  digitalWrite(MEN2, HIGH);
  digitalWrite(HEATER,HIGH);
  digitalWrite(MIN1,LOW);
  digitalWrite(MIN2,LOW);
  digitalWrite(MPWM, LOW);
  nh.initNode();
  nh.subscribe(sub_robosub_launcher);
}

void loop()
{
  nh.spinOnce();
  delay(500);
}
