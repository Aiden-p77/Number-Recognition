function net=runRecognition(num,targets,n)    
    %faster learn: trainlm and traingdx
    net=newff(minmax(num),[n n],{'logsig','logsig'},'traingdx'); %logsig tansig
    %net=feedforwardnet([n n],'traingd'); %or traingdx
    %net.performFcn='msereg';
    net.trainParam.epochs=10000;
    net.trainParam.show=1;
    net.trainParam.lr=0.02;
    net.trainParam.goal=1e-07;
    net.trainParam.min_grad=1e-09;
    net=train(net,num,targets);
    %[net,tr]=train(net,num,targets);
end