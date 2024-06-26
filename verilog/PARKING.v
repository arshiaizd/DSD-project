module PARKING (
    input clk,
    input car_entered,
    input is_uni_car_entered,
    input car_exited,
    input is_uni_car_exited,
    output signed [10 : 0] uni_parked_car,
    output signed [10 : 0] parked_car,
    output signed [10 : 0] uni_vacated_space,
    output signed [10 : 0] vacated_space,
    output uni_is_vacated_space,
    output is_vacated_space,
    output valid
);

    reg signed [10 : 0] number_of_entered_cars = 0;
    reg signed [10 : 0] number_of_entered_uni_cars = 0;
    reg signed [10 : 0] number_of_exited_cars = 0;
    reg signed [10 : 0] number_of_exited_uni_cars = 0;
    reg signed [10 : 0] uni_parked_car_tmp;
    reg signed [10 : 0] parked_car_tmp;    

    integer capacity = 0;
    integer minute = 0;
    integer hour = 0;

    assign uni_parked_car = uni_parked_car_tmp;
    assign parked_car = parked_car_tmp;
    assign uni_vacated_space = 700 - capacity - uni_parked_car_tmp;
    assign vacated_space = capacity - parked_car_tmp;
    assign uni_is_vacated_space = (700 > capacity + uni_parked_car_tmp);
    assign is_vacated_space = (capacity > parked_car_tmp);
    assign valid = (uni_vacated_space >=0 && vacated_space >= 0);

    always @(posedge clk) begin
        minute <= minute + 1;

        if (minute == 600) begin
            minute <= 0;
            hour <= hour + 1;
        end

        if (hour == 24) begin
            hour <= 0;
        end

        if (hour >= 8 && hour < 13) begin
            capacity <= 200;
        end 
        else if (hour >= 13 && hour <= 15) begin
            capacity <= 200 + (hour - 12) * 50;
        end
        else begin
            capacity <= 500;
        end
    end

    always @(posedge car_entered) begin
        number_of_entered_uni_cars <= number_of_entered_uni_cars + ((is_uni_car_entered & uni_is_vacated_space) ? 1 : 0);
        number_of_entered_cars <= number_of_entered_cars + ((~is_uni_car_entered & is_vacated_space) ? 1 : 0);
    end

    always @(posedge car_exited) begin
        number_of_exited_uni_cars <= number_of_exited_uni_cars + ((is_uni_car_exited & (uni_parked_car > 0)) ? 1 : 0);
        number_of_exited_cars <= number_of_exited_cars + ((~is_uni_car_exited & (parked_car > 0)) ? 1 : 0);
    end

    always @(number_of_entered_uni_cars, number_of_entered_cars, number_of_exited_uni_cars, number_of_exited_cars) begin
        uni_parked_car_tmp = number_of_entered_uni_cars - number_of_exited_uni_cars;
        parked_car_tmp = number_of_entered_cars - number_of_exited_cars;
    end

endmodule
