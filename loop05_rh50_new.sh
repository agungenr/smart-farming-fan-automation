#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 05-00 RH 50%

if (( $rh >= 47.5 && $rh < 52.5 ))
then

    echo "Loop 05 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###

   # LOOP 05-01 RTEMP 35
   if (( $rtemp >= 34.5 ))
   then
      if (( $teff > 34.720 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 33.879 && $teff < 34.719 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.759 && $teff < 33.878 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.266 && $teff < 32.758 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.399 && $teff < 31.265 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.532 && $teff < 29.398 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.049 && $teff < 27.531 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.949 && $teff < 26.048 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.179 && $teff < 24.948 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.739 && $teff < 24.178 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.299 && $teff < 23.738 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.859 && $teff < 23.298 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.419 && $teff < 22.858 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.418 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-02 RTEMP 34
   elif (( $rtemp >= 33.5 && $rtemp < 34.5 ))
   then
      if (( $teff > 33.720 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 32.879 && $teff < 33.719 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.759 && $teff < 32.878 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.367 && $teff < 31.758 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.703 && $teff < 30.366 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.038 && $teff < 28.702 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.701 && $teff < 27.037 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.690 && $teff < 25.70 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.965 && $teff < 24.689 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.525 && $teff < 23.964 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.067 && $teff < 23.524 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.573 && $teff < 23.066 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.062 && $teff < 22.572 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.061 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-03 RTEMP 33
   elif (( $rtemp >= 32.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 32.720 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 31.879 && $teff < 32.719 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.759 && $teff < 31.878 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.468 && $teff < 30.758 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.006 && $teff < 29.467 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.544 && $teff < 28.005 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.353 && $teff < 26.543 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.431 && $teff < 25.352 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.750 && $teff < 24.430 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.310 && $teff < 23.749 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.835 && $teff < 23.309 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.288 && $teff < 22.834 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.705 && $teff < 22.287 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.704 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-04 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 32.5 ))
   then
      if (( $teff > 31.72 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 30.879 && $teff < 31.719 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.759 && $teff < 30.878 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.569 && $teff < 29.758 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.310 && $teff < 28.568 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.050 && $teff < 27.309 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.997 && $teff < 26.049 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.151 && $teff < 24.996 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.499 && $teff < 24.15 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.042 && $teff < 23.498 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.543 && $teff < 23.041 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.959 && $teff < 22.542 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.333 && $teff < 21.958 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.332 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-05 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 30.720 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 29.879 && $teff < 30.719 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.759 && $teff < 29.878 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.670 && $teff < 28.758 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.613 && $teff < 27.669 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.556 && $teff < 26.612 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.613 && $teff < 25.555 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.785 && $teff < 24.612 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.099 && $teff < 23.784 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.556 && $teff < 23.098 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.010 && $teff < 22.555 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.459 && $teff < 22.009 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.905 && $teff < 21.458 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.904 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-06 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 29.720 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 28.879 && $teff < 29.719 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.759 && $teff < 28.878 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.772 && $teff < 27.758 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.917 && $teff < 26.771 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.062 && $teff < 25.916 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.229 && $teff < 25.061 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.419 && $teff < 24.228 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.699 && $teff < 23.418 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.070 && $teff < 22.698 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.478 && $teff < 22.069 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.959 && $teff < 21.477 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.476 && $teff < 20.958 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.475 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-07 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 28.729 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.913 && $teff < 28.728 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.828 && $teff < 27.912 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.918 && $teff < 26.827 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.185 && $teff < 25.917 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.451 && $teff < 25.184 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.703 && $teff < 24.450 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.938 && $teff < 23.702 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.202 && $teff < 22.937 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.493 && $teff < 22.201 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.859 && $teff < 21.492 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.373 && $teff < 20.858 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.962 && $teff < 20.372 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.961 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-08 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 27.750 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.999 && $teff < 27.749 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.999 && $teff < 26.998 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.132 && $teff < 25.998 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.399 && $teff < 25.131 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.666 && $teff < 24.398 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.962 && $teff < 23.665 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.287 && $teff < 22.961 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.559 && $teff < 22.286 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.779 && $teff < 21.558 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.109 && $teff < 20.778 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.659 && $teff < 20.108 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.319 && $teff < 19.658 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.318 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-09 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 26.771 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.085 && $teff < 26.770 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.170 && $teff < 26.084 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.347 && $teff < 25.169 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.613 && $teff < 24.346 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.880 && $teff < 23.612 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.220 && $teff < 22.879 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.635 && $teff < 22.219 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.916 && $teff < 21.634 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.065 && $teff < 20.915 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.359 && $teff < 20.064 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.945 && $teff < 19.358 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.676 && $teff < 18.944 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.675 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-10 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 25.825 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.235 && $teff < 25.824 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.449 && $teff < 25.234 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.707 && $teff < 24.448 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.010 && $teff < 23.706 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.312 && $teff < 23.009 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.688 && $teff < 22.311 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.138 && $teff < 21.687 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.419 && $teff < 21.137 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.530 && $teff < 20.418 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.793 && $teff < 19.529 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.359 && $teff < 18.792 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.076 && $teff < 18.358 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.075 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-11 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 24.900 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 24.428 && $teff < 24.899 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.799 && $teff < 24.427 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.166 && $teff < 23.798 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.528 && $teff < 23.165 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.889 && $teff < 22.527 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.295 && $teff < 21.888 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.745 && $teff < 21.294 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.019 && $teff < 20.744 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.116 && $teff < 20.018 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.350 && $teff < 19.115 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.859 && $teff < 18.349 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.505 && $teff < 17.858 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.504 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-12 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 23.975 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 23.620 && $teff < 23.974 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.149 && $teff < 23.619 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.624 && $teff < 23.148 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.045 && $teff < 22.623 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.467 && $teff < 22.044 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.903 && $teff < 21.466 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.353 && $teff < 20.902 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.619 && $teff < 20.352 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.702 && $teff < 19.618 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.908 && $teff < 18.701 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.359 && $teff < 17.907 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.933 && $teff < 17.358 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.932 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-13 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 22.824 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 22.383 && $teff < 22.823 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.797 && $teff < 22.382 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.282 && $teff < 21.796 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.837 && $teff < 21.281 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.392 && $teff < 20.836 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.936 && $teff < 20.391 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.469 && $teff < 19.935 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.855 && $teff < 19.468 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.094 && $teff < 18.854 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.434 && $teff < 18.093 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 16.973 && $teff < 17.433 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.613 && $teff < 16.972 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.612 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-14 RTEMP 22
   elif (( $rtemp >= 21.55 && $rtemp < 22.5 ))
   then
      if (( $teff > 21.746 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 21.183 && $teff < 21.745 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.434 && $teff < 21.182 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.905 && $teff < 20.433 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.596 && $teff < 19.904 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.287 && $teff < 19.595 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.945 && $teff < 19.286 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.571 && $teff < 18.944 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.092 && $teff < 18.570 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 17.509 && $teff < 18.091 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.004 && $teff < 17.508 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 16.655 && $teff < 17.003 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.384 && $teff < 16.654 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.383 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 05-15 RTEMP 21
   elif (( $rtemp < 21.55 ))
   then
      if (( $teff > 20.880 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 20.219 && $teff < 20.879 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.339 && $teff < 20.218 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.799 && $teff < 19.338 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.599 && $teff < 18.798 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.399 && $teff < 18.598 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.149 && $teff < 18.398 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.849 && $teff < 18.148 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 17.479 && $teff < 17.848 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 17.039 && $teff < 17.478 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 16.659 && $teff < 17.038 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 16.399 && $teff < 16.658 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.199 && $teff < 16.398 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.198 ))
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

