clear
num_of_segment = 20
for i=1:1:num_of_segment
  T4(i) = num_of_segment*exp(-0.15*i);
  segment(i)=i;
  for j=i:1:num_of_segment
    T3(i,j)=T4(i)*exp(-0.15*j);
  end


end


for i=1:1:num_of_segment
  figure(1)
    semilogy(segment(i:end),T3(i,i:end), 'k--')
  hold on
end

figure(1)
T3Gradient = sum(T3,1);
plot(segment,T3Gradient,'r')
plot(segment,T4,'b')
xlabel('Tissue Segment')
ylabel('TH levels')



