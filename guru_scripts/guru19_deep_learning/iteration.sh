#!/bin/bash
cnt=0
while [ $cnt -lt 200 ]; do
    cnt=$((cnt+1))
    echo "iter: $cnt" &>>Output_validation.txt
    gsql -g NeuralNetwork "run query training(1)" &>>Output_validation.txt
    gsql -g NeuralNetwork "run query prediction_accuracy()" &>>Output_validation.txt
done

