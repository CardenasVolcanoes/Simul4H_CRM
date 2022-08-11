function [data,sname]=data_file(xxa,xxb)

cd("link... of file")

if xxa==6
 sdataname={'r6cm400C','r6cm600C','r6cm700C','r6cm800C','r6cm500CE2f','r6cm600CE2B','r6cm600CE2f'}
  sfilename=strcat(sdataname{xxb},".dat");
cd("r6cm") 
data=load(sfilename);

elseif xxa==8

 sdataname={'r8cm400C','r8cm600CB','r8cm600C','r8cm600CE2f','r8cm800CE2A','r8cm800CE2B','r8cm800CE2C'} 
 sfilename=strcat(sdataname{xxb},".dat");
cd("r8cm")
data=load(sfilename);

elseif xxa==10
 
sdataname=["r10cm700C", "r10cm600C", "r10cm400C","r10cm800CE2f"] 
 %xxb=input("Introdusca su eleccion :   ")  
 sfilename=strcat(sdataname{xxb},".dat");
cd("r10cm")
data=load(sfilename);
else
 disp("error") 
end
sname=sdataname{xxb};
cd ..