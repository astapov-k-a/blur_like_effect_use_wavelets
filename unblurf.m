function unblurf(srcname,destname,wname,val)
TX=double(imread(srcname,'bmp'))./256;
size(TX)
t1(:,:)=TX(:,:,1);
t2(:,:)=TX(:,:,2);
t3(:,:)=TX(:,:,3);
size(t1)
size(t2)
size(t3)
m=val;
disp('1st color');
[a1,h1,v1,d1]=dwt2(t1,wname);
size(a1)
size(h1)
size(v1)
size(d1)
h1=h1.*m;
v1=v1.*m;
d1=d1.*m;
disp('2nd color');
[a2,h2,v2,d2]=dwt2(t2,wname);
size(a1)
size(h1)
size(v1)
size(d1)
h2=h2.*m;
v2=v2.*m;
d2=d2.*m;
disp('3d color');
[a3,h3,v3,d3]=dwt2(t3,wname);
size(a1)
size(h1)
size(v1)
size(d1)
h3=h3.*m;
v3=v3.*m;
d3=d3.*m;

disp('\n\n/n/n   idwt');
tt=idwt2(a3,h3,v3,d3,wname);
disp('----------');
TX3(:,:,3)=tt;
size(TX3)
tt=idwt2(a2,h2,v2,d2,wname);
TX3(:,:,2)=tt;
tt=idwt2(a1,h1,v1,d1,wname);
TX3(:,:,1)=tt;

 imwrite(uint8(TX3*256),destname,'bmp');