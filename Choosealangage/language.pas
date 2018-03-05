{
  @author=>'rubenaprikyan'    
                        -------->choose a language<--------
  @return abstractly returns the selected language
}
Procedure language (var lang:boolean; var k1:byte);
var c1:char;s:string;
  BEGIN
               setcolor(15);
               setfillstyle(1,7); bar(1,1,638,478);
               setfillstyle(1,8);  bar(180,94,470,376);
               setfillstyle(1,6);
               Settextstyle(0,0,2);
               bar(215,144,425,180);
               bar(228,196,412,232);
               bar(228,248,412,284);
            s:='ENGLISH';
               outtextxy(320-textwidth(s) div 2,162-textheight(s) div 2,s);
            s:='ARMENIAN'; 
               outtextxy(320-textwidth(s) div 2,214-textheight(s) div 2,s);
            s:='EXIT'; 
               outtextxy(320-textwidth(s) div 2,266-textheight(s) div 2,s);
          Repeat
          c1:=readkey;
          Case ord(c1) of
          27: begin k1:=3;break end;
          72: k1:=k1-1;
          80: k1:=k1+1 end;
          If k1=0 then k1:=3 else if k1=4 then k1:=1;
          setfillstyle(1,8);
          bar(215,144,227,336);
          bar(413,144,425,336);
          setfillstyle(1,6);
          bar(210+5,92+52*k1,227,92+52*k1+36);
          bar(413,92+52*k1,430-5,92+52*k1+36);
          Until ord(c1)=13;
  END;
