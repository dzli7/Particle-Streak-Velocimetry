function [X,Y,angle] = preprocessData(XCell,YCell,angleCell)
    
    % Extract image data from cell and concatenate
    X = cat(4,XCell{:});
    % Extract label data from cell and concatenate
    Y = cat(2,YCell{:});
    % Extract angle data from cell and concatenate
    angle = cat(2,angleCell{:});
        
    % One-hot encode labels
    Y = onehotencode(Y,1);
    
end