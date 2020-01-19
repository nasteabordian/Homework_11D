//ex4 p 46 caz c
  type AdresaCandidat=^ac;
                   ac=record
                   np:string;
                   nm:real;
                  Urm:AdresaCandidat;
                    end;
  var n,i:integer;
      p,r,q,u,v:AdresaCandidat;

  procedure citire;
   var i:integer;
  begin
   write('n='); readln(n);
   new(r);
   writeln('introdu nume si nota'); readln(r^.np); readln(r^.nm);
   r^.urm:=nil; p:=r; u:=r;
    for i:=2 to n do begin
     new(r);
     writeln('introdu nume si nota'); readln(r^.np); readln(r^.nm);
     r^.urm:=nil; u^.urm:=r; u:=r 
    end;
  end;

  procedure afisare;
  begin
  r:=p ;
  while r<>nil do begin
   writeln(r^.np,' ', r^.nm, ' ');
   r:=r^.urm end; writeln
  end;

procedure afisare2;
begin
r:=v ;
while r<>nil do begin
write(r^.np,' ', r^.nm);
r:=r^.urm;
end;
end;

  procedure cei_cu_9(var p,u:AdresaCandidat);
  begin
   u:=nil; r:=p;
   while r<>nil do begin
    if r^.nm>=9.0 then begin  new(q); q^.np:=r^.np;
     q^.nm:=r^.nm; q^.urm:=nil;
    if u=nil then begin u:=q; v:=q; end
                  else begin v^.urm:=q; v:=q; end;
                       end;
    r:=r^.urm;
    end;
  end;

  procedure exclude;
  begin 
   r:=p; v:=r;
   while r<>nil do
   begin if r^.nm<9.0
    then if P=r then begin P:=r^.urm; v:=p; dispose (r);r:=v; end
       else begin v^.urm:=r^.urm; dispose (r);r:=v^.urm; end
       else begin v:=r; r:=r^.urm; end;
   end;
  end;

begin 
  citire; writeln('lista initiala');
  afisare; writeln('lista modificata 1:');
  cei_cu_9(p,u);
  exclude;
  afisare; writeln('lista modificata 2:');
  afisare2;
  
end.


