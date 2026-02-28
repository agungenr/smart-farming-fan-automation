#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 15-00 RH 100%

if (( $rh >= 97.5 && $rh <= 100 ))
then

    echo "Loop 15 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###

   # LOOP 15-01 RTEMP 35
   if (( $rtemp >= 33.5 ))
   then
      if (( $teff > 43.217 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 42.298 && $teff < 43.216 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 41.074 && $teff < 42.297 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 39.850 && $teff < 41.073 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 38.626 && $teff < 39.849 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 37.403 && $teff < 38.625 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 36.179 && $teff < 37.402 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 34.955 && $teff < 36.178 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 33.731 && $teff < 34.954 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 32.507 && $teff < 33.730 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 31.283 && $teff < 32.506 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 30.060 && $teff < 31.282 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.836 && $teff < 30.059 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 28.835 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 15-02 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 39.925 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 39.171 && $teff < 39.924 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 38.168 && $teff < 39.170 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 37.164 && $teff < 38.167 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 36.160 && $teff < 37.163 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 35.156 && $teff < 36.159 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 34.153 && $teff < 35.155 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 33.149 && $teff < 34.152 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 32.145 && $teff < 33.148 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 31.142 && $teff < 32.144 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 30.138 && $teff < 31.141 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 29.134 && $teff < 30.137 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.130 && $teff < 29.133 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 28.129 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 15-03 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 38.406 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 37.738 && $teff < 38.405 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 36.848 && $teff < 37.737 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 35.958 && $teff < 36.847 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 35.068 && $teff < 35.957 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 34.179 && $teff < 35.067 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 33.289 && $teff < 34.178 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.399 && $teff < 33.288 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.509 && $teff < 32.398 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 30.620 && $teff < 31.508 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.730 && $teff < 30.619 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.840 && $teff < 29.729 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.950 && $teff < 28.839 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 27.949 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 15-04 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 37.529 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 36.909 && $teff < 37.528 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 36.085 && $teff < 36.908 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 35.260 && $teff < 36.084 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 34.436 && $teff < 35.259 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 33.612 && $teff < 34.435 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 32.787 && $teff < 33.611 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.963 && $teff < 32.786 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.139 && $teff < 31.962 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 30.314 && $teff < 31.138 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.490 && $teff < 30.313 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.665 && $teff < 29.489 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.841 && $teff < 28.664 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 27.840 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 15-05 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 36.701 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 36.134 && $teff < 36.700 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 35.380 && $teff < 36.133 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 34.626 && $teff < 35.379 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 33.872 && $teff < 34.625 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 33.118 && $teff < 33.871 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 32.364 && $teff < 33.117 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.610 && $teff < 32.363 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.856 && $teff < 31.609 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 30.103 && $teff < 30.855 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.349 && $teff < 30.102 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.595 && $teff < 29.348 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.841 && $teff < 28.594 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 27.840 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 15-06 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 33.588 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 33.030 && $teff < 33.587 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.287 && $teff < 33.029 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.545 && $teff < 32.286 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 30.802 && $teff < 31.544 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 30.059 && $teff < 30.801 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 29.316 && $teff < 30.058 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.574 && $teff < 29.315 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.831 && $teff < 28.573 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.088 && $teff < 27.830 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.345 && $teff < 27.087 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.603 && $teff < 26.344 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.860 && $teff < 25.602 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 24.859 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 15-07 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 31.057 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 30.511 && $teff < 31.056 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.784 && $teff < 30.510 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.058 && $teff < 29.783 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.331 && $teff < 29.057 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.604 && $teff < 28.330 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.878 && $teff < 27.603 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.151 && $teff < 26.877 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.424 && $teff < 26.150 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.698 && $teff < 25.423 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.971 && $teff < 24.697 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.244 && $teff < 23.970 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.518 && $teff < 23.243 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.517 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 15-08 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 29.686 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 29.250 && $teff < 29.685 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.670 && $teff < 29.249 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.089 && $teff < 28.669 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.509 && $teff < 28.088 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.928 && $teff < 27.508 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.348 && $teff < 26.927 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.767 && $teff < 26.347 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.187 && $teff < 25.766 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.607 && $teff < 25.186 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.026 && $teff < 24.606 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.446 && $teff < 24.025 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.865 && $teff < 23.445 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.864 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 15-09 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 29.088 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 28.696 && $teff < 29.087 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.174 && $teff < 28.695 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.652 && $teff < 28.173 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.130 && $teff < 27.651 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.608 && $teff < 27.129 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.086 && $teff < 26.607 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.564 && $teff < 26.085 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.042 && $teff < 25.563 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.520 && $teff < 25.041 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.998 && $teff < 24.519 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.476 && $teff < 23.997 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.954 && $teff < 23.475 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.953 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 15-10 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 28.488 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 28.096 && $teff < 28.487 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.574 && $teff < 28.095 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.052 && $teff < 27.573 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.530 && $teff < 27.051 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.008 && $teff < 26.529 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.486 && $teff < 26.007 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.964 && $teff < 25.485 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.442 && $teff < 24.963 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.920 && $teff < 24.441 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.398 && $teff < 23.919 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.876 && $teff < 23.397 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.354 && $teff < 22.875 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.353 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 15-11 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 27.888 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 27.496 && $teff < 27.887 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.974 && $teff < 27.495 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.452 && $teff < 26.973 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.930 && $teff < 26.451 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.408 && $teff < 25.929 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.886 && $teff < 25.407 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.364 && $teff < 24.885 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.842 && $teff < 24.363 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.320 && $teff < 23.841 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.798 && $teff < 23.319 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.276 && $teff < 22.797 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.754 && $teff < 22.275 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.753 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 15-12 RTEMP 22
   elif (( $rtemp >= 21.5 && $rtemp < 22.5 ))
   then
      if (( $teff > 27.288 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 26.896 && $teff < 27.287 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.374 && $teff < 26.895 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.852 && $teff < 26.373 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.330 && $teff < 25.851 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.808 && $teff < 25.329 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.286 && $teff < 24.807 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.764 && $teff < 24.285 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.242 && $teff < 23.763 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.720 && $teff < 23.241 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.198 && $teff < 22.719 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.676 && $teff < 22.197 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.154 && $teff < 21.675 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.153 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 15-13 RTEMP 21
   elif (( $rtemp >= 20.5 && $rtemp < 21.5 ))
   then
      if (( $teff > 26.688 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 26.296 && $teff < 26.687 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.774 && $teff < 26.295 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.252 && $teff < 25.773 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.730 && $teff < 25.251 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.208 && $teff < 24.729 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.686 && $teff < 24.207 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.164 && $teff < 23.685 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.642 && $teff < 23.163 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.120 && $teff < 22.641 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.598 && $teff < 22.119 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.076 && $teff < 21.597 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.554 && $teff < 21.075 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.553 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 15-14 RTEMP 20
   elif (( $rtemp < 20.5 ))
   then
      if (( $teff > 26.088 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 25.696 && $teff < 26.087 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.174 && $teff < 25.695 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.652 && $teff < 25.173 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.130 && $teff < 24.651 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.608 && $teff < 24.129 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.086 && $teff < 23.607 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.564 && $teff < 23.085 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.042 && $teff < 22.563 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.520 && $teff < 22.041 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.998 && $teff < 21.519 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.476 && $teff < 20.997 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.954 && $teff < 20.475 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.953 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   fi

   ffansp=$(($windsp * 20))
   if (( $ffansp < 5  )); then ffansp=5; fi

   # Menulis ke file fanspeed dengan menghilangkan desimal
   # fansp="${ffansp//.}"
   printf '%.0f\n' "$ffansp" > $filespeed

   ###

fi
