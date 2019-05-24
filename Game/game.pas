{
  @author=>'rubenaprikyan'
                  -------->Game<-------
}
uses crt,graph;
var i,j,n,l:byte; a,b:integer; x:array[1..4,1..4] of integer; c,cn:char;
s:string; t,tp,th:boolean;
procedure Game;
var i,j,n,l:byte; a,b:integer; x:array[1..4,1..4] of integer; c,cn:char;
      s:string; t,tp,th:boolean;
procedure nerkum(x0,a0,b0:integer);

  procedure miaguyn(l1,a1,b1:integer);
    begin setfillstyle(1,l1); bar(b1,a1,b1+90,a1+80) end;
  procedure equal(l2,l22,a2,b2:integer);
   var i2,j2:byte;
   begin
    for i2:=0 to 80 do
    for j2:=0 to 90 do
     if j2 mod 2=0 then putpixel(b2+j2,a2+i2,l2)
     else putpixel(b2+j2,a2+i2,l22)
   end;
  procedure anhavasar(l3,l33,a3,b3:integer);
   var i3,j3:byte;
   begin
    for i3:=0 to 80 do
    for j3:=0 to 90 do
    if j3 mod 3=0 then putpixel(b3+j3,a3+i3,l33)else
    putpixel(b3+j3,a3+i3,l3)
   end;
BEGIN
 case x0 of
 2: monochrome(15,a0,b0);
 4: unequal(15,14,a0,b0);
 8: equal(15,14,a0,b0);
 16:unequal(14,15,a0,b0);
 32:monochrome(14,a0,b0);
 64:unequal(14,6,a0,b0);
 128: equal(6,14,a0,b0);
 256: unequal(6,14,a0,b0);
 512: monochrome(6,a0,b0);
 1024:unequal(6,4,a0,b0);
 2048:equal(4,6,a0,b0);
 4096:unequal(4,6,a0,b0);
 8192:monochrome(4,a0,b0);
 end;
  randomize; l:=0;
initgraph(a,b,' ');
setfillstyle(1,15); bar(0,0,640,480);
setfillstyle(1,8); bar(125,65,515,415);
setfillstyle(1,7);
for p:=1 to 4 do
for k:=1 to 4 do
 begin
 a:=86*(p-1)+71;
 b:=131+96*(k-1);
 bar(b,a,b+90,a+80);
 end;
for p:=1 to 4 do
for k:=1 to 4 do x[p,k]:=0;
{x[3,1]:=2; x[4,1]:=2;} settextstyle(0,0,2);setcolor(0);
REPEAT

t:=false;
 for i:=1 to 4 do
 for j:=1 to 4 do if x[i,j]=0 then begin t:=true; break end;
 if t=true then
  begin
   repeat
   a:=random(4)+1; b:=random(4)+1;
   until x[a,b]=0;
  i:=random(10);
  if i=9 then x[a,b]:=4 else x[a,b]:=2
  end;
 for i:=1 to 4 do
 for j:=1 to 4 do
 if x[i,j]>0 then
 begin
  setfillstyle(1,15);
  a:=86*(i-1)+71;
  b:=131+96*(j-1);
  nerkum(x[i,j],a,b);
  a:=104+(i-1)*86;
  b:=104+(j-1)*96;
  str(x[i,j],s);
  outtextxy(b,a,s)
 end else
 begin
  setfillstyle(1,7);
  a:=86*(i-1)+71;
  b:=131+96*(j-1);
  bar(b,a,b+90,a+80);
 end;

For i:=1 to 4 do
    For j:=1 to 4 do
    if x[i,j]=64 then begin th:=true; break end;
    tp:=false;
          For i:=1 to 4 do
          For j:=1 to 4 do
          if x[i,j]=0 then begin tp:=false; break end;
          if tp=true then
           For i:=2 to 3 do
           For j:=2 to 3 do
            begin
             if l>1 then begin tp:=false; break end;
             l:=0;
             for a:=i-1 to i+1 do
             for b:=j-1 to j+1 do
              if x[a,b]=x[i,j] then l:=l+1;
      end;

c:=readkey;if ord(c)=27 then break;
if keypressed then while keypressed do cn:=readkey;
c:=cn;
case ord(c) of
72:for j:=1 to 4 do
   BEGIN
    t:=false; for i:=2 to 4 do if x[i,j]>0 then begin t:=true;break end;
    if t=true then
     BeGiN
      for i:=1 to 3 do
       Begin
        t:=true;
         while(x[i,j]=0)and(t=true) do
          Begin
           t:=false;
           for a:=i to 3 do
           x[a,j]:=x[a+1,j]; x[4,j]:=0;
           for a:=i+1 to 4 do if x[a,j]>0 then begin t:=true; break end
          End;
       End;
      for i:=1 to 3 do
      if x[i,j]=x[i+1,j] then
      Begin
       x[i,j]:=2*x[i,j];
       for a:=i+1 to 3 do
       x[a,j]:=x[a+1,j];
       x[4,j]:=0;
      end;
     EnD
   END;
80:for j:=1 to 4 do
   BEGIN
    t:=false;for i:=3 downto 1 do if x[i,j]>0 then begin t:=true; break end;
    if t=true then
     BeGiN
      for i:=4 downto 2 do
       Begin
        t:=true;
         while (x[i,j]=0)and(t=true) do
          Begin
           t:=false;
           for a:=i downto 2 do x[a,j]:=x[a-1,j]; x[1,j]:=0;
           for a:=i-1 downto 1 do
           if x[a,j]>0 then begin t:=true;break end
          End;
       End;
      for i:=4 downto 2 do
      if x[i,j]=x[i-1,j] then
      Begin
       x[i,j]:=2*x[i,j];
       for a:=i-1 downto 2 do
        x[a,j]:=x[a-1,j]; x[1,j]:=0;
      End;
     EnD
   END;
77:for i:=1 to 4 do
   BEGIN
    t:=false;for j:=3 downto 1 do if x[i,j]>0 then begin t:=true; break end;
    if t=true then
     BeGiN
      for j:=4 downto 2 do
       Begin
        t:=true;
         while (x[i,j]=0)and(t=true) do
          Begin
           t:=false;
           for a:=j downto 2 do x[i,a]:=x[i,a-1]; x[i,1]:=0;
           for a:=j-1 downto 1 do
           if x[i,a]>0 then begin t:=true;break end
          End;
       End;
      for j:=4 downto 2 do
      if x[i,j]=x[i,j-1] then
      Begin
       x[i,j]:=2*x[i,j];
       for a:=j-1 downto 2 do
       x[i,a]:=x[i,a-1]; x[i,1]:=0;
      End;
     EnD
   END;
75:for i:=1 to 4 do
   BEGIN
    t:=false; for j:=2 to 4 do if x[i,j]>0 then begin t:=true;break end;
    if t=true then
     BeGiN
      for j:=1 to 3 do
       Begin
        t:=true;
         while(x[i,j]=0)and(t=true) do
          Begin
           t:=false;
           for a:=j to 3 do
           x[i,a]:=x[i,a+1]; x[i,4]:=0;
           for a:=j+1 to 4 do if x[i,a]>0 then begin t:=true; break end
          End;
       End;
      for j:=1 to 3 do
      if x[i,j]=x[i,j+1] then
      Begin
       x[i,j]:=2*x[i,j];
       for a:=j+1 to 3 do
       x[i,a]:=x[i,a+1];
       x[i,4]:=0;
      end;
     EnD
   END;
end;
UNTIL (ord(c)=27)or(th=true)or(tp=true);
setcolor(4);
if lang then 
  begin
   win:='You Win';
   gameover:='Game Over';
   exit:='Exit'
  end 
else 
 begin 
  win:='';
  gameover:='';
  exit:='';
   
if th=true then s:=win else if tp=true then s:=gameover else
s:=exit;
settextstyle(0,0,6);
outtextxy(220,200,s)
END;
