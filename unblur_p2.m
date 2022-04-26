disp('\n\n/n/n   idwt');
tt=idwt2(a3,h3,v3,d3,'db35');
disp('----------');
TX3(:,:,3)=tt;
size(TX3)
tt=idwt2(a2,h2,v2,d2,'db35');
TX3(:,:,2)=tt;
tt=idwt2(a1,h1,v1,d1,'db35');
TX3(:,:,1)=tt;