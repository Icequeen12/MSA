function[final]= trasa2(rowA,colA,s1,s2,mPkt,linie,back,A,B,kara,dop,przerwa,poczatek,koniec,wynik,M)

final={};
spacja='..';
while (rowA>1 || colA>1)

    if(M(rowA,colA)==0)
        
         s1=strcat(s1,A(1:colA-1));
         s2=strcat(s2,B(1:rowA-1));
         
         aa=length(A(1:colA-1));
         bb=length(B(1:rowA-1));
         if(aa>bb)
             puste=aa-bb;
             
             for i=1:puste
                 s2=strcat(s2,spacja);
             end
             
             for i=1:aa
         linie=strcat(linie,' _ ');
             end
         else
             puste=bb-aa;
             
             for i=1:puste
                 s1=strcat(s1,spacja);
             end
             for i=1:bb
         linie=strcat(linie,' _ ');
             end
         end
         
        break;
    end
    
if(back(rowA,colA)==7 )
    rowA=rowA-1;
    s1=strcat(s1,'_');
    s2=strcat(s2,B(rowA));
    mPkt=strcat(mPkt,num2str(przerwa));
    mPkt=strcat(mPkt,'-');
    wynik=wynik-przerwa;
    linie=strcat(linie,' _ ');
    
elseif(back(rowA,colA)==70)
    colA=colA-1;
    s1=strcat(s1,A(colA));
    s2=strcat(s2,'_');
    mPkt=strcat(mPkt,num2str(przerwa));
    mPkt=strcat(mPkt,'-');
    wynik=wynik-przerwa;
    linie=strcat(linie,' _ ');
    
elseif(back(rowA,colA)==700)
    rowA=rowA-1;
    colA=colA-1;
    s1=strcat(s1,A(colA));
    s2=strcat(s2,B(rowA));
    
    
    if(A(colA)==B(rowA))
               mPkt=strcat(mPkt,num2str(dop));
                 linie=strcat(linie,' I ');
                 wynik=wynik+dop;
    else
         mPkt=strcat(mPkt,num2str(kara));
             mPkt=strcat(mPkt,'-');
          linie=strcat(linie,' _ ');
          wynik=wynik-kara;
    end
  
%% rozwidlenia %% 
elseif(back(rowA,colA)==707 || back(rowA,colA)==770 || back(rowA,colA)==777 )
    rowKolejny=rowA;
    colKolejny=colA;
    s3=s1;
    s4=s2;
    mPkt2=mPkt;
    linie2=linie;
    wynik2=wynik;
    
    back(rowA,colA)=back(rowA,colA)-700;
    rowA=rowA-1;
    colA=colA-1;
    s1=strcat(s1,A(colA));
    s2=strcat(s2,B(rowA));
    
    
    if(A(colA)==B(rowA))
               mPkt=strcat(mPkt,num2str(dop));
                 linie=strcat(linie,' I ');
                 wynik=wynik+dop;
    else
         mPkt=strcat(mPkt,num2str(kara));
           linie=strcat(linie,' _ ');
           wynik=wynik-kara;
    end

    [skosy]=trasa2(rowKolejny,colKolejny,s3,s4,mPkt2,linie2,back,A,B,kara,dop,przerwa,poczatek,koniec,wynik2,M);
    final=[final;skosy];
        
        
elseif(back(rowA,colA)==77)
    rowKolejny=rowA;
    colKolejny=colA;
    s3=s1;
    s4=s2;
    mPkt2=mPkt;
    linie2=linie;
    wynik2=wynik;
    
    back(rowA,colA)=back(rowA,colA)-70;
    colA=colA-1;
    s1=strcat(s1,A(colA));
    s2=strcat(s2,'_');
    mPkt=strcat(mPkt,num2str(przerwa));
    mPkt=strcat(mPkt,'-');
    linie=strcat(linie,' _ ');
    wynik=wynik-przerwa;
    
    [wersy]=trasa2(rowKolejny,colKolejny,s3,s4,mPkt2,linie2,back,A,B,kara,dop,przerwa,poczatek,koniec,wynik2,M);
    final=[final;wersy];

end 
end

s1=fliplr(s1);
s2=fliplr(s2);
mPkt=fliplr(mPkt);
linie=fliplr(linie);

if(poczatek~=0 && koniec~=0)
    s1=s1(poczatek:koniec);
    s2=s2(poczatek:koniec);
    linie=linie(poczatek:koniec+2);
    mPkt=mPkt(poczatek:koniec);
    
end

dl=length(s1)+length(s2);
identycznosc=length(find(linie=='I'))/(length(find(linie=='_'))+length(find(linie=='I')))*100;
przerwy=(length(find(s1=='_'))+length(find(s2=='_')))/dl*100;
cell={s1,linie,s2,mPkt,wynik,identycznosc,przerwy};
final=[final;cell];
end