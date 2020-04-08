function[kolejno]=kilka(seq1,seq2,seq3,seq4,kara,nagroda,przerwa,poczatek,koniec)

seq={seq1,seq2,seq3,seq4};
macierz=zeros(4,5);

kolumna=1;
for j=1:4
    p=1;
    
    for jj=p:4
        if(jj~=j)
            [M,trasy]=myIdea(seq{j},seq{jj},kara,nagroda,przerwa,poczatek,koniec);
            macierz(j,jj) = trasy{5,1};
            macierz(jj,j) = trasy{5,1};
            dopasowania{1,kolumna}=trasy{1,1};
            dopasowania{2,kolumna}=trasy{3,1};
            dopasowania{3,kolumna}=j;
            dopasowania{4,kolumna}=jj;
            kolumna=kolumna+1;
        end
    end
    kolumna=kolumna+1;
    p=p+1;
end


for i=1:4
    macierz(i,5)=sum(macierz(i,:));
end

[rowA ~]=find((macierz(:,5)==max(macierz(:,5))));

rowA=rowA(end);

a=1;

disp(length(dopasowania));
disp(dopasowania);
for i=1:length(dopasowania)
    if(dopasowania{3,i}==rowA)
        disp(i);
        ostateczne{1,a}=dopasowania{1,i};
        ostateczne{2,a}=dopasowania{2,i};
        test{1,a}=dopasowania{1,i};
        test{2,a}=dopasowania{2,i};
        a=a+1;
    end
end


for j=1:3
    napis=test{1,j};
    [a]=strfind(napis,'_');
    
    if(~isempty(a))
        for i=1:3
            if(i~=j)
                nap=test{1,i};
                nap2=test{2,i};
                ostateczne{1,i}=[nap(1:a-1),'_', nap(a:end)];
                ostateczne{2,i}=[nap2(1:a-1),'_', nap2(a:end)];
            end
        end
    end
end

kolejno{1,1}=ostateczne{1,1};
kolejno{2,1}=ostateczne{2,1};
kolejno{3,1}=ostateczne{2,2};
kolejno{4,1}=ostateczne{2,3};

for i=1:4
    for j=1:4
        if(length(kolejno{i,1})>length(kolejno{j,1}))
            for p=1:length(kolejno{i,1})-length(kolejno{j,1})
                kolejno{j,1}=strcat(kolejno{j,1},'_');
            end
        end
    end
end


notacja=kolejno{4,1};

kolejno{6,1}=seq1;
kolejno{7,1}=seq2;
kolejno{8,1}=seq3;
kolejno{9,1}=seq4;

for a=1:4
    linia=kolejno{a,1};
    for i=1:length(kolejno{a,1})
        kolejno{a,i}=linia(i);
    end
end

for i=1:length(notacja)
    licznikA=0;
    licznikC=0;
    licznikT=0;
    licznikG=0;
    for ii=1:4
        
        if (kolejno{ii,i}=='A')
            licznikA=licznikA+1;
        end
        
        if (kolejno{ii,i}=='C')
            licznikC=licznikC+1;
        end
        
        if (kolejno{ii,i}=='T')
            licznikT=licznikT+1;
        end
        
        if (kolejno{ii,i}=='G')
            licznikG=licznikG+1;
        end
    end
    
    for o=1:4
        if (kolejno{o,i}=='G'&& licznikG>1)
         clr ='#49624';
         kolejno(o,i) = strcat(['<html><body bgcolor="' clr '" text="#FFFFFF" width="100px">'],kolejno(o,i));
        elseif (kolejno{o,i}=='A'&& licznikA>1)
         clr ='#84975';
         kolejno(o,i) = strcat(['<html><body bgcolor="' clr '" text="#FFFFFF" width="100px">'],kolejno(o,i));
        elseif (kolejno{o,i}=='T'&& licznikT>1)
         clr ='#10000';
         kolejno(o,i) = strcat(['<html><body bgcolor="' clr '" text="#FFFFFF" width="100px">'],kolejno(o,i));
        elseif (kolejno{o,i}=='C'&& licznikC>1)
         clr ='#BABA';
         kolejno(o,i) = strcat(['<html><body bgcolor="' clr '" text="#FFFFFF" width="100px">'],kolejno(o,i));
        end
    end
    
end

f = figure('Position',[100 100 350 150]);
h = uitable('Parent',f, 'ColumnWidth',{100 'auto'}, ...
    'Units','normalized', 'Position',[0.05 0.05 0.9 0.9], ...
    'Data',kolejno, 'ColumnName',[], 'RowName',[]);

end
