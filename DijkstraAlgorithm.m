w = [0 2 3 4 inf;
    2 0 inf 5 3;
    3 inf 0 2 1;
    4 5 2 0 7;
    inf 3 1 7 0]
n = size(w,1);
w1 = w(1,:);

for i = 1:n
    l(i) = w1(i);
    z(i) = 1;
end
s = [];
s(1) = 1;
u = s(1);
k = 1;
l;
z;

while k<n
    for i = 1:n
        for j = 1:k
            if i ~= s(j)
                if l(i)>l(u)+w(u,i);
                    l(i) = l(u)+w(u,i);
                    z(i) = u;
                end
            end
        end
    end
    l;
    z;
    
    ll=l;
    for i = 1:n
        for j = 1:k
            if i~=s(j)
                ll(i) = ll(i);
            else
                ll(i) = inf;
            end
        end
    end
    
    lv = inf;
    for i = 1:n
        if ll(i)<lv
            lv = ll(i);
            v = i;
        end
    end
    
    lv;
    v;
    s(k+1) = v;
    k = k+1;
    u = s(k);
end
l
z
    
    
    
    
    
    
    
    