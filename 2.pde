float w;
float h;
void setup(){
	size(400,400);
	w=width;
	h=height;
	background(255);
	mFactor = w/((255-51)*6);
}

float red=255;
float green=51;
float blue=51;
colorFlag = 0;
void draw(){
	rectMode(CENTER);
	noStroke(0);
	if(colorFlag==0){
		if(blue<256){
			blue++;
		}
		else{
			colorFlag=1;
		}
	}
	if(colorFlag==1){
		if(red>50){
			red--;
		}
		else{
			colorFlag=2;
		}
	}
	if(colorFlag==2){
		if(green<256){
			green++;
		}
		else{
			colorFlag=3;
		}
	}
	if(colorFlag==3){
		if(blue>50){
			blue--;
		}
		else{
			colorFlag=4;
		}
	}
	if(colorFlag==4){
		if(red<256){
			red++;
		}
		else{
			colorFlag=5;
		}
	}
	if(colorFlag==5){
		if(green>50){
			green--;
		}
		else{
			colorFlag=7;
		}
	}
	fill(red,green,blue);
	if(w>0 || h>0){
		rect(width/2,height/2,w-=mFactor,h-=mFactor);	//
	}
}
