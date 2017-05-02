
A = load('s_verb_corr')

% remove columns 20 and 4
A = horzcat(A(1:end,1:20-1),A(1:end,20+1:end));
A = horzcat(A(1:end,1:4-1),A(1:end,4+1:end));

% remove rows 20 and 4
B = vertcat(A(1:20-1,1:end),A(20+1:end, 1:end));
B = vertcat(B(1:4-1,1:end),B(4+1:end, 1:end));


save('s_verb_corr20','-ascii','B')
