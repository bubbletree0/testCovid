%% load in data

dir="";

vac_full=readtable(strcat(dir, "vaccine_full.csv"));
pop=readtable(strcat(dir, "Population.csv"));
%% subset data to the country/region of choice

country='Canada'; % country of choice

vac_country=vac_full(ismember(vac_full.location, country),:);

pop_country=pop(ismember(pop.Location, country),:);