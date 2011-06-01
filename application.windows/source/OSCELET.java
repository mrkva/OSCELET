import processing.core.*; 
import processing.xml.*; 

import SimpleOpenNI.*; 
import oscP5.*; 
import netP5.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class OSCELET extends PApplet {

/* --------------------------------------------------------------------------
 * SimpleOpenNI User3d Test
 * --------------------------------------------------------------------------
 * Processing Wrapper for the OpenNI/Kinect library
 * http://code.google.com/p/simple-openni
 * --------------------------------------------------------------------------
 * prog:  Max Rheiner / Interaction Design / zhdk / http://iad.zhdk.ch/
 * date:  02/16/2011 (m/d/y)
 * ----------------------------------------------------------------------------
 * this demos is at the moment only for 1 user, will be implemented later
 * ----------------------------------------------------------------------------
 */





OscP5 oscP5;
NetAddress myRemoteLocation;
SimpleOpenNI context;
float        zoomF =0.5f;
float        rotX = radians(180);  // by default rotate the hole scene 180deg around the x-axis, 
// the data from openni comes upside down
float        rotY = radians(0);

public void setup()
{
  size(1024, 768, P3D);  // strange, get drawing error in the cameraFrustum if i use P3D, in opengl there is no problem
  context = new SimpleOpenNI(this);

  // disable mirror
  context.setMirror(true);

  // enable depthMap generation 
  context.enableDepth();

  // enable skeleton generation for all joints
  context.enableUser(SimpleOpenNI.SKEL_PROFILE_UPPER);

  stroke(255, 255, 255);
  smooth();  
  perspective(95, 
  PApplet.parseFloat(width)/PApplet.parseFloat(height), 
  10, 150000);

  // osc business          
  oscP5 = new OscP5(this, 5555);
  myRemoteLocation = new NetAddress("127.0.0.1", 57120);
}

public void draw()
{
  // update the cam
  context.update();

  background(0, 0, 0);

  // set the scene pos
  translate(width/2, height/2, 0);
  rotateX(rotX);
  rotateY(rotY);
  scale(zoomF);

  int[]   depthMap = context.depthMap();
  int     steps   = 3;  // to speed up the drawing, draw every third point
  int     index;
  PVector realWorldPoint;

  translate(0, 0, -1000);  // set the rotation center of the scene 1000 infront of the camera

  stroke(100); 
  /*for (int y=0;y < context.depthHeight();y+=steps)
   {
   for (int x=0;x < context.depthWidth();x+=steps)
   {
   index = x + y * context.depthWidth();
   if (depthMap[index] > 0)
   { 
   // draw the projected point
   realWorldPoint = context.depthMapRealWorld()[index];
   point(realWorldPoint.x, realWorldPoint.y, realWorldPoint.z);
   }
   }
   } 
   */
  // draw the skeleton if it's available
  if (context.isTrackingSkeleton(1))
    drawSkeleton(1);

  // draw the kinect cam
  //context.drawCamFrustum();
}

// draw the skeleton with the selected joints
public void drawSkeleton(int userId)
{
  strokeWeight(3);

  // to get the 3d joint data
  drawLimb(userId, SimpleOpenNI.SKEL_HEAD, SimpleOpenNI.SKEL_NECK);

  drawLimb(userId, SimpleOpenNI.SKEL_NECK, SimpleOpenNI.SKEL_LEFT_SHOULDER);
  drawLimb(userId, SimpleOpenNI.SKEL_LEFT_SHOULDER, SimpleOpenNI.SKEL_LEFT_ELBOW);
  drawLimb(userId, SimpleOpenNI.SKEL_LEFT_ELBOW, SimpleOpenNI.SKEL_LEFT_HAND);
  drawLimb(userId, SimpleOpenNI.SKEL_LEFT_HAND, SimpleOpenNI.SKEL_LEFT_ELBOW);

  drawLimb(userId, SimpleOpenNI.SKEL_NECK, SimpleOpenNI.SKEL_RIGHT_SHOULDER);
  drawLimb(userId, SimpleOpenNI.SKEL_RIGHT_SHOULDER, SimpleOpenNI.SKEL_RIGHT_ELBOW);
  drawLimb(userId, SimpleOpenNI.SKEL_RIGHT_ELBOW, SimpleOpenNI.SKEL_RIGHT_HAND);
  drawLimb(userId, SimpleOpenNI.SKEL_RIGHT_HAND, SimpleOpenNI.SKEL_RIGHT_ELBOW);

  drawLimb(userId, SimpleOpenNI.SKEL_LEFT_SHOULDER, SimpleOpenNI.SKEL_TORSO);
  drawLimb(userId, SimpleOpenNI.SKEL_RIGHT_SHOULDER, SimpleOpenNI.SKEL_TORSO);
  drawLimb(userId, SimpleOpenNI.SKEL_TORSO, SimpleOpenNI.SKEL_RIGHT_SHOULDER);

  /* drawLimb(userId, SimpleOpenNI.SKEL_TORSO, SimpleOpenNI.SKEL_LEFT_HIP);
   drawLimb(userId, SimpleOpenNI.SKEL_LEFT_HIP, SimpleOpenNI.SKEL_LEFT_KNEE);
   drawLimb(userId, SimpleOpenNI.SKEL_LEFT_KNEE, SimpleOpenNI.SKEL_LEFT_FOOT);
   
   drawLimb(userId, SimpleOpenNI.SKEL_TORSO, SimpleOpenNI.SKEL_RIGHT_HIP);
   drawLimb(userId, SimpleOpenNI.SKEL_RIGHT_HIP, SimpleOpenNI.SKEL_RIGHT_KNEE);
   drawLimb(userId, SimpleOpenNI.SKEL_RIGHT_KNEE, SimpleOpenNI.SKEL_RIGHT_FOOT);  */

  strokeWeight(1);
}

public void drawLimb(int userId, int jointType1, int jointType2)
{
  PVector jointPos1 = new PVector();
  PVector jointPos2 = new PVector();
  float  confidence;
  String limb = "a";

  // draw the joint position
  confidence = context.getJointPositionSkeleton(userId, jointType1, jointPos1);
  confidence = context.getJointPositionSkeleton(userId, jointType2, jointPos2);

  stroke(255, 0, 0, confidence * 200 + 55);
  line(jointPos1.x, jointPos1.y, jointPos1.z, 
  jointPos2.x, jointPos2.y, jointPos2.z);
  /*println(SimpleOpenNI.SKEL_HEAD); //1
   println(SimpleOpenNI.SKEL_NECK);  //2
   println(SimpleOpenNI.SKEL_LEFT_SHOULDER);  //6
   println(SimpleOpenNI.SKEL_LEFT_ELBOW);  //7
   println(SimpleOpenNI.SKEL_LEFT_HAND); //9
   println(SimpleOpenNI.SKEL_RIGHT_SHOULDER); //12
   println(SimpleOpenNI.SKEL_RIGHT_ELBOW); //13
   println(SimpleOpenNI.SKEL_RIGHT_HAND); //15
   println(SimpleOpenNI.SKEL_TORSO); //3 */
   
  switch(jointType1) {
  case 1:
    limb = "SKEL_HEAD";
    break;
  case 2:
    limb = "SKEL_NECK";
    break;
  case 3:
    limb = "SKEL_TORSO";
    break;
  case 6:
    limb = "SKEL_LEFT_SHOULDER";
    break;
  case 7:
    limb = "SKEL_LEFT_ELBOW";
    break;
  case 9:
    limb = "SKEL_LEFT_HAND";
    break;
  case 12:
    limb = "SKEL_RIGHT_SHOULDER";
    break;
  case 13:
    limb = "SKEL_RIGHT_ELBOW";
    break;
  case 15:
    limb = "SKEL_RIGHT_HAND";
    break;
  }  

  OscMessage myMessage = new OscMessage("/OSCELET");
  myMessage.add("/"+limb);
  myMessage.add(new float[] { jointPos1.x, jointPos1.y, jointPos1.z
  }
  );
  oscP5.send(myMessage, myRemoteLocation);
  //print(limb);
  //print(myMessage);
  //print(SimpleOpenNI.SKEL_HEAD);
  //drawJointOrientation(userId,jointType1,jointPos1,50);
}

public void drawJointOrientation(int userId, int jointType, PVector pos, float length)
{
  // draw the joint orientation  
  PMatrix3D  orientation = new PMatrix3D();
  float confidence = context.getJointOrientationSkeleton(userId, jointType, orientation);
  if (confidence < 0.001f) 
    // nothing to draw, orientation data is useless
    return;

  pushMatrix();
  translate(pos.x, pos.y, pos.z);

  // set the local coordsys
  applyMatrix(orientation);

  // coordsys lines are 100mm long
  // x - r
  stroke(255, 0, 0, confidence * 200 + 55);
  line(0, 0, 0, 
  length, 0, 0);
  // y - g
  stroke(0, 255, 0, confidence * 200 + 55);
  line(0, 0, 0, 
  0, length, 0);
  // z - b    
  stroke(0, 0, 255, confidence * 200 + 55);
  line(0, 0, 0, 
  0, 0, length);
  popMatrix();
}

// -----------------------------------------------------------------
// SimpleOpenNI user events

public void onNewUser(int userId)
{
  println("onNewUser - userId: " + userId);
  println("  start pose detection");
  background(0,255,0);
  context.startPoseDetection("Psi", userId);
}

public void onLostUser(int userId)
{
  println("onLostUser - userId: " + userId);
  background(255,0,0);
}

public void onStartCalibration(int userId)
{
  background(255,255,0);
  println("onStartCalibration - userId: " + userId);
}

public void onEndCalibration(int userId, boolean successfull)
{
  println("onEndCalibration - userId: " + userId + ", successfull: " + successfull);

  if (successfull) 
  { 
    println("  User calibrated !!!");
    context.startTrackingSkeleton(userId);
  } 
  else 
  { 
    println("  Failed to calibrate user !!!");
    println("  Start pose detection");
    context.startPoseDetection("Psi", userId);
  }
}

public void onStartPose(String pose, int userId)
{
  println("onStartdPose - userId: " + userId + ", pose: " + pose);
  println(" stop pose detection");

  context.stopPoseDetection(userId); 
  context.requestCalibrationSkeleton(userId, true);
}

public void onEndPose(String pose, int userId)
{
  println("onEndPose - userId: " + userId + ", pose: " + pose);
}

// -----------------------------------------------------------------
// Keyboard events

public void keyPressed()
{
  switch(key)
  {
  case ' ':
    context.setMirror(!context.mirror());
    break;
  }

  switch(keyCode)
  {
  case LEFT:
    rotY += 0.1f;
    break;
  case RIGHT:
    // zoom out
    rotY -= 0.1f;
    break;
  case UP:
    if (keyEvent.isShiftDown())
      zoomF += 0.01f;
    else
      rotX += 0.1f;
    break;
  case DOWN:
    if (keyEvent.isShiftDown())
    {
      zoomF -= 0.01f;
      if (zoomF < 0.01f)
        zoomF = 0.01f;
    }
    else
      rotX -= 0.1f;
    break;
  }
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "OSCELET" });
  }
}
