size(500,500);
int numColumns=16, numRows=16;
int x=0, y=0, count=0;
int xSize= width/numColumns,
ySize=height/numRows;
while (count < numColumns * numRows) {
  if(count % 2 == 0){
    fill(random(255),random(255),random(255));
    } else{
      fill(random(255),random(255),random(255));
    }
    rect(x,y, xSize, ySize);
    count++;
    x += xSize;
    if (count % numColumns == 0) {
    y += ySize;
    x  = 0;
    }
    }
      
