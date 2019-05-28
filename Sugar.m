%Data
Sugar = [1;12;1;4;10;11.3;10;10;13.3;11.3;11;10;6;21;11.3;9;1;1;6;6;9;10;11.3;1;11.3;6;9;11.3;11;10;9;10;11;10;11.3;11.3;10;11;11;9;10;10;9;1;6;9;11.3;13.3;6;9;1;11.3;10;6;10;9;9;6;1;9;10;13.3;10;10;10;11.3;11;6;9;9;1;11;21;10;6;13.3;15;10;6;10;9;6;9;10;11;11.3;10;9;10;9;1;13.3;11.3;10;6;11;10;21;10;10;1;11.3;1;10;11.3;6;12;11.3;13.3;9;11.3;10;6;6;1;1;9;13.3;6;11;6;13.3;9;1;9;10;11;10;11;9;13.3;9;1;10;13.3;15;10;9;10;6;10;11;9;10;10;10;13.3;10;10;21;10;11;1;10;21;10;11;11.3;13.3;1;11.3;13.3;21;10;11;10;6;11;11;11;11.3;11;11;21;11;9;11;11;11;11;11;6;11;10;10;13.3;9;11;11;11;11;11;9;11;11.3;21;11;10;10;11;11;12;11.3;11.3;11;11;11;10;11;9;11;10;11;11;10;10;11;12;4;11.3;9;10;11;11;11;10;11.3;11;10;11];

%Histogram plot
hist(Sugar);
title("Sugar Content of Preferred Cereal of Lynbrook Students");
xlabel("Sugar Content(grams per serving)");
ylabel("Frequency");
input("Press Enter for Stats ");

%Calculate Stats
stats = statistics(Sugar);
omin = stats(1);
q1 = stats(2);
med = stats(3);
q3 = stats(4);
omax = stats(5);
omean = stats(6);
stddev = stats(7);
oiqr = q3 - q1;
orange = omax - omin;
moerror = 1/sqrt(size(Sugar)(1));

%Print stats
printf("min: %d\n", omin);
printf("q1: %d\n", q1);
printf("med: %d\n", med);
printf("q3: %d\n", q3);
printf("max: %d\n", omax);
printf("iqr: %d\n", oiqr);
printf("range: %d\n", orange);
printf("mean: %d\n", omean);
printf("standard deviation: %d\n", stddev);
printf("margin of error: %d\n", moerror);
