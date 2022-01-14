//Global Variables
String powerButton = "Power";
color pink=#FF0033, gray=#C6C6C6, white=#FFFFFF, buttonColour;
float powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight;
//
void powerButton() { 
  //Population
  powerButtonX =displayWidth*29/32;
  powerButtonY=displayHeight*0/16;
  powerButtonWidth=displayWidth*3/32;
  powerButtonHeight=displayHeight*1/16;
}//End powerButton()
//
void powerButtonDraw() {
  //Hoverover
  if (mouseX>powerButtonX && mouseX<powerButtonX+powerButtonWidth && mouseY>powerButtonY && mouseY<powerButtonY+powerButtonHeight) {
    buttonColour =gray;
     hoverOverButtonFill();
  } else {
    buttonColour = pink;
    fill(buttonColour);
    rect(powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
    fill(white);
  }
  //Text
  textCode(powerButton, 25, powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
}//End powerButtonDraw() 
//
void powerButtonMousePressed() {
  if (mouseX>powerButtonX && mouseX<powerButtonX+powerButtonWidth && mouseY>powerButtonY && mouseY<powerButtonY+powerButtonHeight ) exit();
}//End powerButtonMousePressed()
//
void hoverOverButtonFill() {
    fill(buttonColour);
    noStroke();
    rect(powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
    stroke(1);
    fill(white);
}//End hoverOverButtonFill()
