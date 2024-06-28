# Sharif_Parking_Simulator

in this repository we implemented a simulator for sharif parking and analize the the parking in different hours of day. this project was inspired by the 8'th question of the Digital System Design Course's midterm exam.

## Tools
- ModelSim
- VisualStudio
- Quartus
- Verilog Knowledge

##Implementation Derails
in this detail we used verilog language and implement a parkinglot using dataflow modeling and behavioral design patterns and then write a test bench that covers all the corner cases and fully shows the abilities of the program. after that we used Quartus for synthesis and it analisys. for more details and better understanding of the implementation chechout the report file in Document folder

##How to run
to run this project first you should install latest Version of ModelSim you can get that from the link below:           


https://www.intel.com/content/www/us/en/software-kit/750368/modelsim-intel-fpgas-standard-edition-software-version-18-1.html     




then create a project and add Code/verilog/PARKING.v and code/verilog/TB.v then you should compile and start the simulation like the picture below:       

![image](https://github.com/arshiaizd/DSD-project/assets/53052185/5d44efb3-033b-4243-beda-18f05ceaa629)       

         
then click run -all to see the transcript result:        
![image](https://github.com/arshiaizd/DSD-project/assets/53052185/badf7caf-0a8f-46ec-8203-d4f0b2add0e2)          



after that for synthesis you could use quartus II or any other appropriate application you can download quartus II from the link below:        


           
https://www.intel.com/content/www/us/en/software-kit/666221/intel-quartus-ii-web-edition-design-software-version-13-1-for-windows.html    

         
there is a full step by step guide on how to synthesis the code in quartus in the report but here there is a brief explaination:      
first build a project under the FPGA Arria II Gx then add PARKING.v to it (in the Verilog HDL File format). then compile it after that you should get the compilation report tab as shown in below: 


![Screenshot 2024-06-29 014251](https://github.com/arshiaizd/DSD-project/assets/53052185/50047a1f-12cc-46d6-813a-999757f6fd3b)        


then choose the TimeQuest Timing Analyzer as shown below:       



![Screenshot 2024-06-29 012750](https://github.com/arshiaizd/DSD-project/assets/53052185/141d9fa2-ac6b-46ea-8eae-fdb247befb53)           



there are three files that contain frequencies and you can interprt them

## Result

the ModelSim should give a result shown as below:         



![image](https://github.com/arshiaizd/DSD-project/assets/53052185/ca9fab17-fc01-420a-9e4a-f7d158ff8804)           




and the Quartus should give a result such as what is shown below:         



![image](https://github.com/arshiaizd/DSD-project/assets/53052185/8de8d6a3-db23-40f3-97a3-97a68ae65959)
![image](https://github.com/arshiaizd/DSD-project/assets/53052185/2320c367-d32a-41a7-a335-d9d3e892cc13)

## Related Links

-[ModelSim](https://www.intel.com/content/www/us/en/software-kit/750368/modelsim-intel-fpgas-standard-edition-software-version-18-1.html)          
-[Quartus](https://www.intel.com/content/www/us/en/software-kit/666221/intel-quartus-ii-web-edition-design-software-version-13-1-for-windows.html )           
-[VScode](https://code.visualstudio.com/download)             

## Authors
-[Arshia Izdyari](https://github.com/arshiaizd)          
-[Alireza Mirrokni](https://github.com/alirezamirrokni)          
