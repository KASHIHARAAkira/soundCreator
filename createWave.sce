fr = 440;   //base freaquency

samples = soundsec(1);
//xw = 0:0.0001:0.9;
yw = sin(2*%pi*fr*samples(:));
//plot(yw);

//create envelope
//piano*guitar
AT = 0.01;  //Attack Time
DT = 0.9;   //Decay Time
RT = 0;     //Release Time
AL = 1;     //Attack Level
SL = 0;     //Sustain Level


//Attack Time
//x = 0:0.0001:0.01;
ya = 100*samples(1:220);
//plot(ya);
//Decay Time
xd = 0.0101:0.0001:0.9
yd = exp(-6*samples(221:22050));
//plot(yd);
y = [ya,yd];
wave = y.*yw';
plot(wave);

savewave('nya.wav', wave)
