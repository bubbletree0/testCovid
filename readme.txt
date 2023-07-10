readme 

This is a description of vaccine and population dataset. This is in no way a comprehensive guide. More information will be added as needed.

vac_full.csv

Some of the data here are interpolated and extrapolated since the data points can be sparse (depending on the region). Linear interpolation/extrapolation is used. If columns 'total_individuals_fully_vacinated' and 'total_individuals_3doses' are completely missing for a region, they are approximated using 'total_individuals_at_least_one' multiplied by the average proportion between 'total_individuals_fully_vacinated'/'total_individuals_3doses' and 'total_individuals_at_least_one'. 

e.g.  'total_individuals_fully_vacinated'= 'total_individuals_at_least_one'*('total_individuals_at_least_one'-'total_individuals_fully_vacinated'/'total_individuals_at_least_one')

Columns:
	location - the full name of the country/region
	iso_code - three letter code of each country/region (good for future linkage if needed)
	date - the date of the data (year-month-day)
	total_individuals_at_least_one - the total number of individual persons that recieved at least 1 dose of any vaccine
	total_individuals_fully_vacinated - the total number of individual persons that recieved the number of doses recommended by each of the vaccinated manufacturer 
	total_individuals_3doses - the total number of individual persons that received an booster shot (i.e. extra dose above the number of recommended dosage)
	vaccine - type of vaccine manufacturer
	TotalVaccineCount - total number of vaccines administered thus far (if the vaccine is a two-dose vaccine, each dose counts as one count)
	DailyNewVaccineCount - total number of vaccines administered that day
	efficacy_symptomatic - the efficacy of the vaccine in preventing symptoms 
	efficacy_severe - the efficacy of the vaccine in preventing severe symptoms (e.g. hospitalizations)
	numDose - the recommended dosage number



population.csv


Columns:
	iso_code - three letter code of each country/region (good for future linkage if needed)
	LocID - unique ID for each country/region
	LocTypeID - unique ID for the type of region
	LocTypeName - type of region
	year
	Location - name of the country/region
	StartRange - low end of age range (inclusive)
	EndRange - high end of age range (inclusive)
	PopTotal- total population count 
