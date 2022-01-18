function [gradients,state,loss] = modelGradients(dlnet,dlX,T1,T2)

[dlY1,dlY2,state] = forward(dlnet,dlX,'Outputs',["softmax" "fc2"]);

lossLabels = crossentropy(dlY1,T1);
lossAngles = mse(dlY2,T2);

loss = lossLabels + 0.1*lossAngles;
gradients = dlgradient(loss,dlnet.Learnables);

end