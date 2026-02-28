#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 11-00 RH 80%

if (( $rh >= 77.5 && $rh < 82.5 ))
then

    echo "Loop 11 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###

   # LOOP 11-01 RTEMP 35
   if (( $rtemp >= 34.5 ))
   then
      if (( $teff > 39.720 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 38.879 && $teff < 39.719 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 37.759 && $teff < 38.878 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 36.182 && $teff < 37.758 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 34.149 && $teff < 36.181 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 32.116 && $teff < 34.148 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 30.824 && $teff < 32.115 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.274 && $teff < 30.823 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.439 && $teff < 30.273 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.319 && $teff < 29.438 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.279 && $teff < 28.318 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.399 && $teff < 27.278 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.599 && $teff < 26.398 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 25.598 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-02 RTEMP 34
   elif (( $rtemp >= 33.5 && $rtemp < 34.5 ))
   then
      if (( $teff > 38.741 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 37.965 && $teff < 38.740 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 36.930 && $teff < 37.964 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 35.462 && $teff < 36.929 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 33.560 && $teff < 35.461 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 31.657 && $teff < 33.559 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 30.324 && $teff < 31.656 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.560 && $teff < 30.323 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.782 && $teff < 29.559 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.990 && $teff < 28.781 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.229 && $teff < 27.989 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.528 && $teff < 27.228 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.856 && $teff < 26.527 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 25.855 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-03 RTEMP 33
   elif (( $rtemp >= 32.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 37.763 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 37.050 && $teff < 37.762 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 36.102 && $teff < 37.049 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 34.742 && $teff < 36.101 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 32.970 && $teff < 34.741 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 31.199 && $teff < 32.969 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 29.824 && $teff < 31.198 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.845 && $teff < 29.823 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.125 && $teff < 28.844 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.662 && $teff < 28.124 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.179 && $teff < 27.661 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.656 && $teff < 27.178 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.113 && $teff < 26.655 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 26.112 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-04 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 32.5 ))
   then
      if (( $teff > 36.705 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 36.055 && $teff < 36.704 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 35.189 && $teff < 36.054 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 33.949 && $teff < 35.188 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 32.335 && $teff < 33.948 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 30.720 && $teff < 32.334 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 29.331 && $teff < 30.719 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.167 && $teff < 29.330 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.476 && $teff < 28.166 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.259 && $teff < 27.475 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.985 && $teff < 27.258 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.599 && $teff < 26.984 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.156 && $teff < 26.598 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 26.155 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-05 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 35.330 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 34.733 && $teff < 35.329 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 33.939 && $teff < 34.732 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 32.866 && $teff < 33.938 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 31.513 && $teff < 32.865 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 30.161 && $teff < 31.512 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.867 && $teff < 30.160 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.631 && $teff < 28.866 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.862 && $teff < 27.630 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.559 && $teff < 26.861 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.218 && $teff < 26.558 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.799 && $teff < 26.217 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.342 && $teff < 25.798 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 25.341 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-06 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 33.955 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 33.412 && $teff < 33.954 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.689 && $teff < 33.411 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.782 && $teff < 32.688 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 30.692 && $teff < 31.781 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.601 && $teff < 30.691 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.403 && $teff < 29.600 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.095 && $teff < 28.402 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.248 && $teff < 27.094 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.859 && $teff < 26.247 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.450 && $teff < 25.858 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.999 && $teff < 25.449 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.528 && $teff < 24.998 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 24.527 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-07 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 32.566 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 32.033 && $teff < 32.565 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.325 && $teff < 32.032 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.530 && $teff < 31.324 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.649 && $teff < 30.529 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.768 && $teff < 29.648 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.688 && $teff < 28.767 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.410 && $teff < 27.687 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.505 && $teff < 26.409 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.973 && $teff < 25.504 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.463 && $teff < 24.972 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.996 && $teff < 24.462 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.550 && $teff < 23.995 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 23.549 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-08 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 31.155 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 30.569 && $teff < 31.154 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.789 && $teff < 30.568 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.024 && $teff < 29.788 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.274 && $teff < 29.023 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.524 && $teff < 28.273 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.599 && $teff < 27.523 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.499 && $teff < 26.598 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.569 && $teff < 25.498 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.809 && $teff < 24.568 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.149 && $teff < 23.808 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.689 && $teff < 23.148 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.329 && $teff < 22.688 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.328 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-09 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 29.744 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 29.105 && $teff < 29.743 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.253 && $teff < 29.104 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.518 && $teff < 28.252 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.899 && $teff < 27.517 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.280 && $teff < 26.898 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.510 && $teff < 26.279 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.588 && $teff < 25.509 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.633 && $teff < 24.587 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.645 && $teff < 23.632 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.835 && $teff < 22.644 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.382 && $teff < 21.834 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.108 && $teff < 21.381 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.107 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-10 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 28.496 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.906 && $teff < 28.495 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.120 && $teff < 27.905 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.462 && $teff < 27.119 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.931 && $teff < 26.461 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.400 && $teff < 25.930 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.742 && $teff < 25.399 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.956 && $teff < 24.741 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.045 && $teff < 23.955 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.008 && $teff < 23.044 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.172 && $teff < 22.007 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.739 && $teff < 21.171 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.508 && $teff < 20.738 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.507 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-11 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 27.357 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.885 && $teff < 27.356 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.256 && $teff < 26.884 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.706 && $teff < 26.255 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.235 && $teff < 25.705 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.763 && $teff < 25.234 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.188 && $teff < 24.762 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.510 && $teff < 24.187 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.688 && $teff < 23.509 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.722 && $teff < 22.687 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.943 && $teff < 21.721 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.539 && $teff < 20.942 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.322 && $teff < 20.538 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.321 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-12 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 26.218 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.863 && $teff < 26.217 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.392 && $teff < 25.862 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.950 && $teff < 25.391 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.538 && $teff < 24.949 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.126 && $teff < 24.537 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.635 && $teff < 24.125 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.063 && $teff < 23.634 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.330 && $teff < 23.062 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.436 && $teff < 22.329 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.715 && $teff < 21.435 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.339 && $teff < 20.714 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.136 && $teff < 20.338 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.135 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-13 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 25.369 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 24.869 && $teff < 25.368 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.203 && $teff < 24.868 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.648 && $teff < 24.202 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.204 && $teff < 23.647 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.759 && $teff < 23.203 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.254 && $teff < 22.758 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.687 && $teff < 22.253 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.097 && $teff < 21.686 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.483 && $teff < 21.096 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.978 && $teff < 20.482 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.695 && $teff < 19.977 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.521 && $teff < 19.694 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.520 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-14 RTEMP 22
   elif (( $rtemp >= 21.55 && $rtemp < 22.5 ))
   then
      if (( $teff > 24.677 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 23.987 && $teff < 24.676 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.070 && $teff < 23.986 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.364 && $teff < 23.069 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.870 && $teff < 22.363 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.377 && $teff < 21.869 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.837 && $teff < 21.376 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.252 && $teff < 20.836 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.801 && $teff < 20.251 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.483 && $teff < 19.800 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.208 && $teff < 19.482 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.021 && $teff < 19.207 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.877 && $teff < 19.02 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.876 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 11-15 RTEMP 21
   elif (( $rtemp < 21.55 ))
   then
      if (( $teff > 24.120 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 23.279 && $teff < 24.119 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.159 && $teff < 23.278 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.332 && $teff < 22.158 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.799 && $teff < 21.331 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.266 && $teff < 20.798 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.699 && $teff < 20.265 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.099 && $teff < 19.698 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.759 && $teff < 19.098 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.679 && $teff < 18.758 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.589 && $teff < 18.678 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.479 && $teff < 18.588 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.359 && $teff < 18.478 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.358 ))
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

