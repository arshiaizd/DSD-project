module TB;

    reg clk;
    reg car_entered;
    reg is_uni_car_entered;
    reg car_exited;
    reg is_uni_car_exited;
    wire signed [10:0] uni_parked_car;
    wire signed [10:0] parked_car;
    wire signed [10:0] uni_vacated_space;
    wire signed [10:0] vacated_space;
    wire uni_is_vacated_space;
    wire is_vacated_space;
    wire valid;

    PARKING parking(
        .clk(clk),
        .car_entered(car_entered),
        .is_uni_car_entered(is_uni_car_entered),
        .car_exited(car_exited),
        .is_uni_car_exited(is_uni_car_exited),
        .uni_parked_car(uni_parked_car),
        .parked_car(parked_car),
        .uni_vacated_space(uni_vacated_space),
        .vacated_space(vacated_space),
        .uni_is_vacated_space(uni_is_vacated_space),
        .is_vacated_space(is_vacated_space),
        .valid(valid)
    );

    initial clk = 0;
    integer myTime = 0;
    integer i,j;
    always begin
        #1 clk = ~clk;
    end
    always begin
        #20 myTime = myTime +1;
    end

    initial begin
        $display("Time is: %02d:%02d" , myTime / 60 , myTime % 60);
    
        // before 1 pm:
        //initial status:
        car_entered = 0;
        is_uni_car_entered = 0;
        car_exited = 0;
        is_uni_car_exited = 0;
        #2
        $display("part1: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);
        
        #100
        $display("Time is: %02d:%02d" , myTime / 60 , myTime % 60);
        //entering 10 uni cars

        for(i = 0; i < 10;i = i + 1)begin
            #2
            car_entered = 1;
            is_uni_car_entered = 1;
            #2
            car_entered = 0;
            is_uni_car_entered = 0;
        end
        $display("part2: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);
        #2
        //entering 100 non-uni cars
        for(i = 0; i < 100;i = i + 1)begin
            #2
            car_entered = 1;
            is_uni_car_entered = 0;
            #2
            car_entered = 0;
            is_uni_car_entered = 1;
        end

        $display("part3: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);
        
        #2
        // uni car in and out at the same time
        car_entered = 1;
        is_uni_car_entered = 1;
        car_exited = 1;
        is_uni_car_exited = 1;
        #2
        car_exited = 0;
        car_entered = 0;
        is_uni_car_entered = 0;
        is_uni_car_exited = 0;
        $display("part4: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        #2
        // non uni car in and out at the same time
        car_entered = 1;
        is_uni_car_entered = 0;
        car_exited = 1;
        is_uni_car_exited = 0;
        #2
        car_exited = 0;
        car_entered = 0;
        $display("part5: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);
        #2
        //emptying uni car parking space
        for(i = 0; i < 10;i = i + 1)begin
            #2
            car_exited = 1;
            is_uni_car_exited = 1;
            #2
            car_exited = 0;
            is_uni_car_exited = 0;
        end
        $display("part6: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);



        //exiting uni car when there is no uni car parked!
        #2
        car_exited = 1;
        is_uni_car_exited = 1;
        #2
        car_exited = 0;
        is_uni_car_exited = 0;

        $display("part7: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        //uni car in and out at the same time when there is no uni car parked
        #2
        car_exited = 1;
        is_uni_car_exited = 1;
        car_entered = 1;
        is_uni_car_entered = 1;
        #2
        car_exited = 0;
        is_uni_car_exited = 0;
        car_entered = 0;
        is_uni_car_entered = 1;

        $display("part8: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        #2
        //filling non uni to full capacity!
        for(i = 0; i < 400;i = i + 1) begin
            #2
            car_entered = 1;
            is_uni_car_entered = 0;
            #2
            car_entered = 0;
            is_uni_car_entered = 1;
        end

        #2
        $display("part9: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        #2
        //non uni car entered when there is no more capacity

        car_entered = 1;
        is_uni_car_entered = 0;
        #2
        car_entered = 0;
        is_uni_car_entered = 1;
        #2
        $display("part10: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        //non uni car entered and exited at the same time when there is no more capacity
        car_entered = 1;
        is_uni_car_entered = 0;
        car_exited = 1;
        is_uni_car_exited = 0;
        #2
        car_entered = 0;
        car_exited = 0;
        is_uni_car_entered = 1;
        is_uni_car_exited = 1;
        #2
        $display("part11: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        //moving to a time between 8 and 13
        #8000
        $display("time is: %02d:%02d" , myTime / 60 , myTime % 60);

        //entering uni car untill full capacity
        #2
        for(i = 0; i < 200;i = i + 1) begin
            #2
            car_entered = 1;
            is_uni_car_entered = 1;
            #2
            car_entered = 0;
            is_uni_car_entered = 0;
        end
        $display("part12: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);
        
        #2
        //entering non uni car when it's full
        car_entered = 1;
        is_uni_car_entered = 0;
        #2
        car_entered = 0;
        is_uni_car_entered = 1;
        #2
        $display("part13: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        //making non uni empty
        for(i = 0; i < 500;i = i + 1) begin
            #2
            car_exited = 1;
            is_uni_car_exited = 0;
            #2
            car_exited = 0;
            is_uni_car_exited = 1;
        end

        $display("part14: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        #2
        //exiting non uni car when it is empty
        car_exited = 1;
        is_uni_car_exited = 0;
        #2
        car_exited = 0;
        is_uni_car_exited = 1;
        #2
        $display("part15: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        //non uni car in and out at the same time when there is no non uni car parked
        #2
        car_exited = 1;
        is_uni_car_exited = 0;
        car_entered = 1;
        is_uni_car_entered = 0;
        #2
        car_exited = 0;
        car_entered = 0;
        is_uni_car_exited = 1;
        is_uni_car_entered = 1;
        #2
        $display("part16: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);


        //filling up the parking
        for(i = 0; i < 300;i = i + 1) begin
            #2
            car_entered = 1;
            is_uni_car_entered = 1;
            #2
            car_entered = 0;
            is_uni_car_entered = 0;
        end

        for(i = 0; i < 200;i = i + 1) begin
            #2
            car_entered = 1;
            is_uni_car_entered = 0;
            #2
            car_entered = 0;
            is_uni_car_entered = 1;
        end

        $display("part17: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        //moving to a time between 1 and 2
        #800
        $display("time is: %02d:%02d" , myTime / 60 , myTime % 60);
        $display("part18: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);
                
        //moving to a time between 2 and 3
        #1200
        $display("time is: %02d:%02d" , myTime / 60 , myTime % 60);
        $display("part19: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);
       
        //moving to a time between 3 and 4
        #1200
        $display("time is: %02d:%02d" , myTime / 60 , myTime % 60);
        $display("part20: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        //moving after 4
        #1200
        $display("time is: %02d:%02d" , myTime / 60 , myTime % 60);
        $display("part21: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        //exiting 50 uni cars

        for(i = 0; i < 50;i = i + 1) begin
            #2
            car_exited = 1;
            is_uni_car_exited = 1;
            #2
            car_exited = 0;
            is_uni_car_exited = 0;
        end

        $display("part22: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        //exiitng all extra uni cars

        for(i = 0; i < 250;i = i + 1) begin
            #2
            car_exited = 1;
            is_uni_car_exited = 1;
            #2
            car_exited = 0;
            is_uni_car_exited = 0;
        end


        $display("part23: uni_parked_car=%0d, parked_car=%0d, uni_vacated_space=%0d, vacated_space=%0d, uni_is_vacated_space=%0d, is_vacated_space=%0d , valid=%0d",
                 uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space , valid);

        $finish;
    end



endmodule