{@author=>'rubenaprikyan'}
procedure Start;
  BEGIN
       a:=0;
       initgraph(a,b,'');
       repeat
       language(key);
       case key of
       1:begin
           lang:=true;
            repeat
              mainmenu(key1,lang);
              case key1 of
              1: game(lang);
              2: help;
              end
            until key1=3;
         end;
       2:begin
           lang:=false;
           repeat
                menu(key1,lang);
              case key1 of
               1:game(lang,key1);
                  begin 
                    case 
                      1:signin(password,login) end;
               2:login;
                  begin
                   game(lang)
                  end; 
               3:help
              end;
           until key1=4;
       end;
       end;
      until key=3;
  END;
  BEGIN {Main} 
    start;
    readkey
  END.
