
{
    @author=>"rubenaprikyan"                                    
                                    
                                    ----->MAIN MENU<-----
  
    @param k1:byte=>the key  which we get every time by start procedure;
    @param lang:boolean,is true when language=>English , is false if language =>Armenian,
                called after language procedure , or on the language procedure    
}
Procedure menu(var k1:byte;lang:boolean); 
  var c1:char; var l,s:string; i:integer;
  BEGIN 
         setcolor(15);
         setfillstyle(1,7); bar(1,1,638,478);
         setfillstyle(1,8);  bar(180,94,470,376);
         setfillstyle(1,6);
 bar(215,144,425,180); bar(228,196,412,232);
 bar(228,248,412,284); bar(228,300,412,336);
 k1:=1; settextstyle(0,0,2);
 if lang then 
  begin
       s:='Log in'; 
          outtextxy(320-textwidth(s) div 2,162-textheight(s) div 2,s);
       s:='Sign in';
          outtextxy(320-textwidth(s) div 2,214-textheight(s) div 2,s);
       s:='Help';
          outtextxy(320-textwidth(s) div 2,266-textheight(s) div 2,s);
       s:='End';
          outtextxy(320-textwidth(s) div 2,318-textheight(s) div 2,s);
 end
  else 
   begin
       s:='Մուտք Գործել'; 
           outtextxy(320-textwidth(s) div 2,162-textheight(s) div 2,s);
       s:='Գրանցվել';
           outtextxy(320-textwidth(s) div 2,214-textheight(s) div 2,s);
       s:='Օքնություն';
           outtextxy(320-textwidth(s) div 2,266-textheight(s) div 2,s);
       s:='Ելք'; 
           outtextxy(320-textwidth(s) div 2,318-textheight(s) div 2,s);
 end;
  Repeat
  c1:=readkey;// readkey i s reading your keyboard key code 
  Case Ord(c1) of
  27: begin k1:=4; break end;// Enter
  72: k1:=k1-1;              // Up
  80: k1:=k1+1 end;          // Down
  If k1=0 then k1:=4 Else if k1=5 then k1:=1;
  {
     Animation all  components on the menu bar
  }
  setfillstyle(1,15);
  bar(215,144,227,336);
  bar(413,144,425,336);
  setfillstyle(4,1);
  bar(210+5,92+52*k1,227,92+52*k1+36);
  bar(413,92+52*k1,430-5,92+52*k1+36);
  Until ord(c1)=13
  END;
