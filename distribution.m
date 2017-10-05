function dist = distribution(n)
    filename = 'testdata.xlsx';
    sheet = 1;
    xlRange = 'B1:B200';

    subsetA = xlsread(filename, sheet, xlRange);
    dist = datasample(subsetA,n,'Replace',false);
    
end