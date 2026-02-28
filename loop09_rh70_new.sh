#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 09-00 RH 70%

if (( $rh >= 67.5 && $rh < 72.5 ))
then

    echo "Loop 09 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###

   # LOOP 09-01 RTEMP 35
   if (( $rtemp >= 34.5 ))
   then
      if (( $teff > 38.020 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 37.179 && $teff < 38.019 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 36.059 && $teff < 37.178 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 34.666 && $teff < 36.058 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 32.999 && $teff < 34.665 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 31.332 && $teff < 32.998 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 30.074 && $teff < 31.331 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.224 && $teff < 30.073 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.259 && $teff < 29.223 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.179 && $teff < 28.258 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.259 && $teff < 27.178 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.659 && $teff < 26.258 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.219 && $teff < 25.658 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 25.218 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-02 RTEMP 34
   elif (( $rtemp >= 33.5 && $rtemp < 34.5 ))
   then
      if (( $teff > 36.859 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 36.072 && $teff < 36.858 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 35.023 && $teff < 36.071 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 33.731 && $teff < 35.022 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 32.195 && $teff < 33.730 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 30.660 && $teff < 32.194 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 29.476 && $teff < 30.659 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.644 && $teff < 29.475 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.759 && $teff < 28.643 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.822 && $teff < 27.758 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.970 && $teff < 26.821 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.288 && $teff < 25.969 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.690 && $teff < 25.287 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 24.689 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-03 RTEMP 33
   elif (( $rtemp >= 32.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 35.699 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 34.965 && $teff < 35.698 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 33.988 && $teff < 34.964 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 32.797 && $teff < 33.987 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 31.392 && $teff < 32.796 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.987 && $teff < 31.391 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.878 && $teff < 29.986 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.063 && $teff < 28.877 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.259 && $teff < 28.062 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.465 && $teff < 27.258 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.680 && $teff < 26.464 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.916 && $teff < 25.679 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.162 && $teff < 24.915 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 24.161 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-04 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 32.5 ))
   then
      if (( $teff > 34.532 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 33.856 && $teff < 34.531 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.956 && $teff < 33.855 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.869 && $teff < 32.955 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 30.595 && $teff < 31.868 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.322 && $teff < 30.594 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.283 && $teff < 29.321 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.479 && $teff < 28.282 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.746 && $teff < 27.478 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.083 && $teff < 26.745 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.374 && $teff < 26.082 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.572 && $teff < 25.373 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.723 && $teff < 24.571 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 23.722 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-05 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 33.343 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 32.742 && $teff < 33.342 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.942 && $teff < 32.741 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.970 && $teff < 31.941 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.828 && $teff < 30.969 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.685 && $teff < 29.827 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.703 && $teff < 28.684 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.881 && $teff < 27.702 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.182 && $teff < 26.880 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.605 && $teff < 26.181 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.999 && $teff < 25.604 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.336 && $teff < 24.998 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.645 && $teff < 24.335 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 23.644 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-06 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 32.154 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 31.628 && $teff < 32.153 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.928 && $teff < 31.627 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.072 && $teff < 30.927 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.060 && $teff < 30.071 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.048 && $teff < 29.059 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.122 && $teff < 28.047 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.283 && $teff < 27.121 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.618 && $teff < 26.282 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.126 && $teff < 25.617 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.624 && $teff < 25.125 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.100 && $teff < 24.623 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.566 && $teff < 24.099 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 23.565 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-07 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 30.960 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 30.453 && $teff < 30.959 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.779 && $teff < 30.452 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.001 && $teff < 29.778 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.120 && $teff < 29.000 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.239 && $teff < 28.119 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.395 && $teff < 27.238 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.588 && $teff < 26.394 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.916 && $teff < 25.587 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.379 && $teff < 24.915 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.866 && $teff < 24.378 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.402 && $teff < 23.865 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.962 && $teff < 23.401 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.961 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-08 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 29.760 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 29.189 && $teff < 29.759 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.429 && $teff < 29.188 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.674 && $teff < 28.428 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.924 && $teff < 27.673 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.174 && $teff < 26.923 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.449 && $teff < 26.173 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.749 && $teff < 25.448 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.009 && $teff < 24.748 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.229 && $teff < 24.008 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.534 && $teff < 23.228 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.009 && $teff < 22.533 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.569 && $teff < 22.008 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.568 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-09 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 28.560 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.925 && $teff < 28.559 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.079 && $teff < 27.924 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.347 && $teff < 27.078 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.728 && $teff < 26.346 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.109 && $teff < 25.727 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.503 && $teff < 25.108 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.910 && $teff < 24.502 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.102 && $teff < 23.909 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.079 && $teff < 23.101 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.202 && $teff < 22.078 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.616 && $teff < 21.201 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.176 && $teff < 20.615 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.175 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-10 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 27.504 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.913 && $teff < 27.503 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.128 && $teff < 26.912 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.473 && $teff < 26.127 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.949 && $teff < 25.472 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.425 && $teff < 24.948 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.888 && $teff < 24.424 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.338 && $teff < 23.887 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.529 && $teff < 23.337 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.460 && $teff < 22.528 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.547 && $teff < 21.459 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.943 && $teff < 20.546 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.495 && $teff < 19.942 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.494 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-11 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 26.543 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.070 && $teff < 26.542 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.442 && $teff < 26.069 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.901 && $teff < 25.441 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.449 && $teff < 24.900 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.997 && $teff < 24.448 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.495 && $teff < 23.996 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.945 && $teff < 23.494 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.179 && $teff < 22.944 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.196 && $teff < 22.178 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.343 && $teff < 21.195 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.750 && $teff < 20.342 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.288 && $teff < 19.749 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.287 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-12 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 25.582 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.228 && $teff < 25.581 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.756 && $teff < 25.227 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.330 && $teff < 24.755 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.949 && $teff < 24.329 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.568 && $teff < 23.948 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.103 && $teff < 23.567 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.553 && $teff < 23.102 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.829 && $teff < 22.552 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.932 && $teff < 21.828 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.140 && $teff < 20.931 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.558 && $teff < 20.139 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.080 && $teff < 19.557 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.079 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-13 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 24.603 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 24.103 && $teff < 24.602 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.437 && $teff < 24.102 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.921 && $teff < 23.436 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.554 && $teff < 22.920 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.187 && $teff < 22.553 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.771 && $teff < 22.186 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.304 && $teff < 21.770 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.743 && $teff < 21.303 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.089 && $teff < 20.742 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.481 && $teff < 20.088 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.968 && $teff < 19.480 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.501 && $teff < 18.967 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.500 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-14 RTEMP 22
   elif (( $rtemp >= 21.55 && $rtemp < 22.5 ))
   then
      if (( $teff > 23.725 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 23.036 && $teff < 23.724 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.119 && $teff < 23.035 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.476 && $teff < 22.118 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.110 && $teff < 21.475 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.743 && $teff < 21.109 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.373 && $teff < 20.742 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.998 && $teff < 20.372 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.610 && $teff < 19.997 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.207 && $teff < 19.609 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.793 && $teff < 19.206 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.353 && $teff < 18.792 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.901 && $teff < 18.352 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.900 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 09-15 RTEMP 21
   elif (( $rtemp < 21.55 ))
   then
      if (( $teff > 23.020 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 22.179 && $teff < 23.019 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.059 && $teff < 22.178 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.316 && $teff < 21.058 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.949 && $teff < 20.315 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.582 && $teff < 19.948 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.249 && $teff < 19.581 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.949 && $teff < 19.248 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.699 && $teff < 18.948 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.499 && $teff < 18.698 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.239 && $teff < 18.498 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.859 && $teff < 18.238 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.419 && $teff < 17.858 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.418 ))
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

