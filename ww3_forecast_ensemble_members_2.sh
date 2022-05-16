#!/bin/sh
#####
# Download forecast data from NOAA:
# NOAA provide 7 day ahead for GFS Wind ensemble
#####


data_name=20210927



#mkdir 'wave_p_'$data_name

cd 'wave_p_'$data_name/


for p in $(seq 10 1 20)
do

## time = 0 - 9
for i in $(seq 0 3 9)
do

url_gfs='https://nomads.ncep.noaa.gov/cgi-bin/filter_gefs_wave_0p25.pl?file=gefs.wave.t00z.p'$p'.global.0p25.f00'$i'.grib2&lev_surface=on&var_DIRPW=on&var_HTSGW=on&var_PERPW=on&subregion=&leftlon=148&rightlon=156&toplat=-30&bottomlat=-38&dir=%2Fgefs.'$data_name'%2F00%2Fwave%2Fgridded'


data='ww3_'$p'_forecast_'$data_name'_f00'$i'.grb2'

curl -o $data $url_gfs

done


## time = 12 - 99
for n in $(seq 12 3 99)
do

url_gfs='https://nomads.ncep.noaa.gov/cgi-bin/filter_gefs_wave_0p25.pl?file=gefs.wave.t00z.p'$p'.global.0p25.f0'$n'.grib2&lev_surface=on&var_DIRPW=on&var_HTSGW=on&var_PERPW=on&subregion=&leftlon=148&rightlon=156&toplat=-30&bottomlat=-38&dir=%2Fgefs.'$data_name'%2F00%2Fwave%2Fgridded'

data='ww3_'$p'_forecast_'$data_name'_f0'$n'.grb2'

curl -o $data $url_gfs

done

## time = 102 - 180
for j in $(seq 102 3 240)
do

url_gfs='https://nomads.ncep.noaa.gov/cgi-bin/filter_gefs_wave_0p25.pl?file=gefs.wave.t00z.p'$p'.global.0p25.f'$j'.grib2&lev_surface=on&var_DIRPW=on&var_HTSGW=on&var_PERPW=on&subregion=&leftlon=148&rightlon=156&toplat=-30&bottomlat=-38&dir=%2Fgefs.'$data_name'%2F00%2Fwave%2Fgridded'

data='ww3_'$p'_forecast_'$data_name'_f'$j'.grb2'

curl -o $data $url_gfs

done

done
