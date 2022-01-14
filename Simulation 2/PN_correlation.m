same = 0;
diff = 0;
a    = 1:30;

for i = 1:15
    pns = [pn(i:15); pn(1:i)];
    pns = pns(1:15);
    for j = 1:15
        if pn(j)==pns(j)
            same = same+1;
        else
            diff = diff+1;
        end
    end
    cor(i) = (same-diff)/15;
    same   = 0;
    diff   = 0;
    
end
plot(a, [cor(1:15) cor(1:15)])