create table census (age real, workclass text, fnlwgt real, education text, education_num real, marital_status text, occupation text, relationship text, race text, sex text, capital_gain real, capital_loss real, hours_per_week real, native_country text, economic_indicator text);
\copy census from adult.csv delimiter ',' csv;

create view married as
select * from census where marital_status in (' Married-AF-spouse', ' Married-civ-spouse', ' Married-spouse-absent',' Separated');

create view unmarried as
select * from census where marital_status in (' Never-married', ' Widowed',' Divorced');