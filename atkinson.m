function[index]=atkinson(vector, type, parameter)

mu=mean(vector);
N=length(vector);

if type=='CRRA'

    aversion=parameter;
    
if (aversion==1)
    
    %{    
    for i=1:N
        share(i)=vector(i)./mu;
     
    end
    
    
    index=1-(prod(share)^(1/N));
    %}
    
    % there seems to be something wrong with log-utility
    
   
    
     % new attempt
    index=1-(geomean(vector))./mu;
   
   % new attempt 2
   %{
   
       for i=1:N
        share(i)=vector(i)./mu;
        adj_share(i)=log(share(i));
    end
    
    index=1-exp((1/N).*sum(adj_share));
    
   %}

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
    % index=1-1./mu.*(sat-(sqrt(sum(share)./N)));
     
      index=1-1./mu.*(sat-(sqrt(mean(share))));
 end
 
 if type=='CARA'
     
     aversion=parameter;
     
     for i=1:N
         share(i)=exp(-vector(i).*aversion);
         %    share(i)=exp(-mu-vector(i).*aversion);
     end
    % index=1+1./(mu.*aversion).*log(sum(share)./N);
     
     
     % index=1+1./(aversion).*log(mean(share));
      
          index=1+1./(mu*aversion).*log(mean(share));
     
     
     %index=1+1./(mu).*log(mean(share));
 end
end

    

