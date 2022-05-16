# SWAN_ensemble_wave_forecast

This repository provide python scripts that help with the implementation o SWAN ensemble forecast system simulation. The meteo-ocean database used in this project are acquire from NOAA-NCEP system (https://nomads.ncep.noaa.gov). 

- The bash file function is to help to download the forecast provided by NOAA-NCEP. Since, we are simulating a ensemble of 10 day forecast lead-time, we generate a bash file that automatise all the 31 SWAN runs

- The Jupyter lab python scripts help to generate input for the SWAN runs, they create all the 31 scenarios (30 members plus one control).

