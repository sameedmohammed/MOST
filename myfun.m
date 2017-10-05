function state = myfun(options,state,flag)

filename = 'ordset3.xlsx';
disp ('ordset.xlsx');

sheet = state.Generation+1;
rank = state.Rank;
score = state.Score;
xlswrite(filename,score,sheet);
xlswrite(filename,rank,sheet,'F1:F200');

end