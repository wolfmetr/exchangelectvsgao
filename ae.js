x = content("Rectangle 1").content("Rectangle Path 1").size[0];
y = content("Rectangle 1").content("Rectangle Path 1").size[1];

idx = index - 1;
rowC = (1024/x)|0;
rowC2 = rowC + 1;
rowCC = rowC + rowC2;
double_row_N = (idx/rowCC)|0;

idx -= double_row_N*rowCC;
rowN = 2*double_row_N;
diff = 0;
if(idx >= rowC){
	idx -= rowC;
	diff = -(x/2);
	rowN = rowN + 1;
}
nx = (idx*x)+diff;
ny = -(rowN*y);
[nx,ny];

/*
x = content("Rectangle 1").content("Rectangle Path 1").size[0];
y = content("Rectangle 1").content("Rectangle Path 1").size[1];
[1+((index-1)*x),720-((index-1)*y)];
*/