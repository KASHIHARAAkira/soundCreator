
fr = 440;   //base freaquency
m = 0;  //0 is piano, 1 is violin
if m == 0 then
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
    
    savewave('rap.wav', wave)
elseif m == 1 then
    samples = soundsec(2);  //2sec
    //xw = 0:0.0001:0.9;
    yw = sin(2*%pi*fr*samples(:)) + 0.56*sin(2*%pi*fr*2*samples(:)) + 0.38*sin(2*%pi*fr*3*samples(:)) + 0.6*sin(2*%pi*fr*4*samples(:)) + 0.58*sin(2*%pi*fr*5*samples(:)) + 0.58*sin(2*%pi*fr*6*samples(:)) + 0.35*sin(2*%pi*fr*7*samples(:)) + 0.2*sin(2*%pi*fr*8*samples(:));
    //plot(yw(1:200));
    
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
    ys(221:32270) = 1; //samples(221:22270);
    xd = 0.0101:0.0001:0.9;
    yd = exp(-10*samples(1:11830))
    y = [ya,ys(221:32270),yd];
    wave = y.*yw';
    plot(wave);
    
    savewave('rav.wav', wave)
end
