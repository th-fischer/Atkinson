function[index]=atkinson(vector, type, parameter)

mu=mean(vector);
N=length(vector);

if type=='CRRA'
    aversion=parameter;
    
    if (aversion==1)

        index=1-(geomean(vector))./mu;

    else

        for i=1:N
            share(i)=vector(i)./mu;
            adj_share(i)=share(i).^(1-aversion);
        end

        index=1-((1/N).*sum(adj_share)).^(1/(1-aversion));
    end
end
 if type=='quad'
     
     sat=parameter; % saturation
     
     for i=1:N
         share(i)=(-vector(i)+sat).^2;
     end

     
      index=1-1./mu.*(sat-(sqrt(mean(share))));
 end
 if type=='CARA'
     
     aversion=parameter;
     
     for i=1:N
         share(i)=exp(-vector(i).*aversion);
       
     end
     
     index=1+1./(mu*aversion).*log(mean(share));
  

 end
end

    

