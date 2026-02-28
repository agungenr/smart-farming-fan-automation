#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 01-00 RH 30%

if (( $rh > 0.01 && $rh < 32.5 ))
then

    echo "Loop 01 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###

   # LOOP 01-01 RTEMP 35
   if (( $rtemp >= 34.5 ))
   then
      if (( $teff > 34.66 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 33.639 && $teff < 34.659 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.279 && $teff < 33.638 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.679 && $teff < 32.278 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.849 && $teff < 30.678 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.019 && $teff < 28.848 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.529 && $teff < 27.018 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.379 && $teff < 25.528 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.579 && $teff < 24.378 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.139 && $teff < 23.578 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.759 && $teff < 23.138 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.499 && $teff < 22.758 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.299 && $teff < 22.498 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.498 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 01-02 RTEMP 34
   elif (( $rtemp >= 33.5 && $rtemp < 34.5 ))
   then
      if (( $teff > 33.66 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 32.639 && $teff < 33.659 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.279 && $teff < 32.638 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.779 && $teff < 31.278 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.149 && $teff < 29.778 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.519 && $teff < 28.148 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.129 && $teff < 26.518 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.979 && $teff < 25.128 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.189 && $teff < 23.978 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.749 && $teff < 23.188 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.329 && $teff < 22.748 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.949 && $teff < 22.328 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.589 && $teff < 21.948 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.588 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 01-03 RTEMP 33
   elif (( $rtemp >= 32.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 32.66 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 31.639 && $teff < 32.659 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.279 && $teff < 31.638 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.889 && $teff < 30.278 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.459 && $teff < 28.888 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.029 && $teff < 27.458 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.739 && $teff < 26.028 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.589 && $teff < 24.738 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.789 && $teff < 23.588 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.349 && $teff < 22.788 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.899 && $teff < 22.348 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.399 && $teff < 21.898 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.889 && $teff < 21.398 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.888 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 01-04 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 32.5 ))
   then
      if (( $teff > 31.66 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 30.640 && $teff < 31.659 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.284 && $teff < 30.639 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.991 && $teff < 29.283 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.760 && $teff < 27.99 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.529 && $teff < 26.759 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.351 && $teff < 25.528 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.226 && $teff < 24.350 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.435 && $teff < 23.225 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.978 && $teff < 22.434 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.478 && $teff < 21.977 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.895 && $teff < 21.477 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.269 && $teff < 20.894 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.268 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 01-05 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 30.664 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 29.655 && $teff < 30.663 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.312 && $teff < 29.654 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.116 && $teff < 28.311 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.063 && $teff < 27.115 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.011 && $teff < 26.062 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.985 && $teff < 25.010 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.985 && $teff < 23.984 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.213 && $teff < 22.984 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.670 && $teff < 22.212 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.125 && $teff < 21.669 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.573 && $teff < 21.124 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.019 && $teff < 20.572 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.018 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 01-06 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 29.668 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 28.669 && $teff < 29.667 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.341 && $teff < 28.668 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.241 && $teff < 27.340 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.367 && $teff < 26.240 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.493 && $teff < 25.366 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.619 && $teff < 24.492 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.744 && $teff < 23.618 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.992 && $teff < 22.743 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.363 && $teff < 21.991 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.771 && $teff < 21.362 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.252 && $teff < 20.770 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.769 && $teff < 20.251 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.768 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 01-07 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 28.675 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 27.700 && $teff < 28.674 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.411 && $teff < 27.699 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.389 && $teff < 26.410 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.628 && $teff < 25.388 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.866 && $teff < 24.627 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.103 && $teff < 23.865 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.338 && $teff < 23.102 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.585 && $teff < 22.337 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.842 && $teff < 21.584 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.190 && $teff < 20.841 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.722 && $teff < 20.189 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.345 && $teff < 19.721 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.344 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 01-08 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 27.693 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 26.772 && $teff < 27.692 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.554 && $teff < 26.771 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.574 && $teff < 25.553 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.824 && $teff < 24.573 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.074 && $teff < 23.823 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.362 && $teff < 23.073 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.687 && $teff < 22.361 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.899 && $teff < 21.686 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.999 && $teff < 20.898 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.269 && $teff < 19.998 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.879 && $teff < 19.268 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.659 && $teff < 18.878 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.658 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 01-09 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 26.711 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 25.843 && $teff < 26.71 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.697 && $teff < 25.842 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.759 && $teff < 24.696 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.020 && $teff < 23.758 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.282 && $teff < 23.019 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.620 && $teff < 22.281 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.035 && $teff < 21.619 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.213 && $teff < 21.034 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.156 && $teff < 20.212 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.348 && $teff < 19.155 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.036 && $teff < 18.347 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.973 && $teff < 18.035 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.972 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi   

   # LOOP 01-10 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 25.741 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 24.965 && $teff < 25.74 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.952 && $teff < 24.964 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.107 && $teff < 23.951 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.410 && $teff < 23.106 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.712 && $teff < 22.409 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.088 && $teff < 21.711 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.538 && $teff < 21.087 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.703 && $teff < 20.537 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.583 && $teff < 19.702 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.743 && $teff < 18.582 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.463 && $teff < 17.742 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.463 && $teff < 17.462 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.462 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 01-11 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 24.784 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 24.136 && $teff < 24.783 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.295 && $teff < 24.135 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.566 && $teff < 23.294 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.928 && $teff < 22.565 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.289 && $teff < 21.927 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.695 && $teff < 21.288 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.145 && $teff < 20.694 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.310 && $teff < 20.144 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.190 && $teff < 19.309 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.350 && $teff < 18.189 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.070 && $teff < 17.349 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.070 && $teff < 17.069 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.069 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 01-12 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 23.827 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 23.308 && $teff < 23.826 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.638 && $teff < 23.307 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.024 && $teff < 22.637 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.445 && $teff < 22.023 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.867 && $teff < 21.444 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.303 && $teff < 20.866 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.753 && $teff < 20.302 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.918 && $teff < 19.752 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 17.798 && $teff < 18.917 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 16.958 && $teff < 17.797 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 16.678 && $teff < 16.957 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.678 && $teff < 16.677 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.677 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 01-13 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 23.804 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 23.217 && $teff < 23.803 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.413 && $teff < 23.216 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.722 && $teff < 22.412 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.166 && $teff < 21.721 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.611 && $teff < 21.165 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.050 && $teff < 20.61 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.483 && $teff < 20.049 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.812 && $teff < 19.482 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.038 && $teff < 18.811 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.447 && $teff < 18.037 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.223 && $teff < 17.446 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.183 && $teff < 17.222 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.182 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 01-14 RTEMP 22
   elif (( $rtemp >= 21.55 && $rtemp < 22.5 ))
   then
      if (( $teff > 23.982 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 23.261 && $teff < 23.981 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.279 && $teff < 23.260 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.506 && $teff < 22.278 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.963 && $teff < 21.505 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.419 && $teff < 20.962 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.855 && $teff < 20.418 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.270 && $teff < 19.854 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.783 && $teff < 19.269 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.393 && $teff < 18.782 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.080 && $teff < 18.392 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.919 && $teff < 18.079 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.835 && $teff < 17.918 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.834 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 01-15 RTEMP 21
   elif (( $rtemp < 21.55 ))
   then
      if (( $teff > 24.12 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 23.280 && $teff < 24.119 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.159 && $teff < 23.279 ))
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

