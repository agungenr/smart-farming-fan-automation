#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 06-00 RH 60%

if (( $rh >= 52.5 && $rh < 57.5 ))
then

    echo "Loop 06 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###

   # LOOP 06-01 RTEMP 35
   if (( $rtemp >= 34.5 ))
   then
      if (( $teff > 35.545 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 34.704 && $teff < 35.544 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 33.584 && $teff < 34.703 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 32.116 && $teff < 33.583 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 30.299 && $teff < 32.115 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.482 && $teff < 30.298 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.148 && $teff < 28.481 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.295 && $teff < 27.147 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.495 && $teff < 26.294 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.747 && $teff < 25.494 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.076 && $teff < 24.746 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.559 && $teff < 24.075 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.119 && $teff < 23.558 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 23.118 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-02 RTEMP 34
   elif (( $rtemp >= 33.5 && $rtemp < 34.5 ))
   then
      if (( $teff > 34.505 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 33.677 && $teff < 34.504 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.575 && $teff < 33.676 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.208 && $teff < 32.574 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.576 && $teff < 31.207 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.944 && $teff < 29.575 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.748 && $teff < 27.943 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.989 && $teff < 26.747 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.245 && $teff < 25.988 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.515 && $teff < 25.244 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.834 && $teff < 24.514 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.252 && $teff < 23.833 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.719 && $teff < 23.251 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.718 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-03 RTEMP 33
   elif (( $rtemp >= 32.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 33.465 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 32.650 && $teff < 33.464 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.566 && $teff < 32.649 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.300 && $teff < 31.565 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.853 && $teff < 30.299 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.405 && $teff < 28.852 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.349 && $teff < 27.404 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.684 && $teff < 26.348 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.995 && $teff < 25.683 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.283 && $teff < 24.994 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.592 && $teff < 24.282 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.945 && $teff < 23.591 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.319 && $teff < 22.944 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.318 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-04 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 32.5 ))
   then
      if (( $teff > 32.423 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 31.623 && $teff < 32.422 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.558 && $teff < 31.622 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.394 && $teff < 30.557 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.131 && $teff < 29.393 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.868 && $teff < 28.130 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.942 && $teff < 26.867 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.354 && $teff < 25.941 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.707 && $teff < 25.353 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.000 && $teff < 24.706 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.300 && $teff < 23.999 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.612 && $teff < 23.299 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.931 && $teff < 22.611 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.930 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-05 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 31.376 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 30.595 && $teff < 31.375 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.555 && $teff < 30.594 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.495 && $teff < 29.554 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.417 && $teff < 28.494 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.338 && $teff < 27.416 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.509 && $teff < 26.337 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.928 && $teff < 25.508 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.264 && $teff < 24.927 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.515 && $teff < 24.263 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.807 && $teff < 23.514 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.178 && $teff < 22.806 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.590 && $teff < 22.177 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.589 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-06 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 30.328 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 29.566 && $teff < 30.327 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.551 && $teff < 29.565 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.597 && $teff < 28.55 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.703 && $teff < 27.596 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.809 && $teff < 26.702 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.075 && $teff < 25.808 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.503 && $teff < 25.074 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.822 && $teff < 24.502 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.031 && $teff < 23.821 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.314 && $teff < 23.030 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.744 && $teff < 22.313 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.249 && $teff < 21.743 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.248 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-07 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 29.286 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 28.548 && $teff < 29.285 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.565 && $teff < 28.547 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.689 && $teff < 27.564 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.919 && $teff < 26.688 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.148 && $teff < 25.918 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.506 && $teff < 25.147 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.992 && $teff < 24.505 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.298 && $teff < 23.991 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.423 && $teff < 23.297 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.663 && $teff < 22.422 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.130 && $teff < 21.662 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.712 && $teff < 21.129 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.711 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-08 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 28.253 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.547 && $teff < 28.252 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.607 && $teff < 27.546 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.768 && $teff < 26.606 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.030 && $teff < 25.767 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.293 && $teff < 25.029 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.733 && $teff < 24.292 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.352 && $teff < 23.732 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.652 && $teff < 23.351 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.632 && $teff < 22.651 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.775 && $teff < 21.631 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.247 && $teff < 20.774 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.882 && $teff < 20.246 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.881 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-09 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 27.219 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.545 && $teff < 27.218 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.648 && $teff < 26.544 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.847 && $teff < 25.647 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.142 && $teff < 24.846 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.437 && $teff < 24.141 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.961 && $teff < 23.436 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.712 && $teff < 22.960 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.005 && $teff < 22.711 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.840 && $teff < 22.004 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.888 && $teff < 20.839 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.363 && $teff < 19.887 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.051 && $teff < 19.362 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.050 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-10 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 26.245 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.654 && $teff < 26.244 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.869 && $teff < 25.653 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.149 && $teff < 24.868 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.495 && $teff < 24.148 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.840 && $teff < 23.494 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.416 && $teff < 22.839 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.221 && $teff < 22.415 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.515 && $teff < 22.220 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.297 && $teff < 21.514 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.303 && $teff < 20.296 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.755 && $teff < 19.302 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.431 && $teff < 18.754 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.430 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-11 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 25.311 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 24.838 && $teff < 25.310 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.210 && $teff < 24.837 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.600 && $teff < 24.209 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.008 && $teff < 23.599 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.416 && $teff < 23.007 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.023 && $teff < 22.415 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.828 && $teff < 22.022 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.127 && $teff < 21.827 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.920 && $teff < 21.126 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.920 && $teff < 19.919 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.332 && $teff < 18.919 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.950 && $teff < 18.331 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.949 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-12 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 24.377 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 24.022 && $teff < 24.376 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.551 && $teff < 24.021 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.050 && $teff < 23.550 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.521 && $teff < 23.049 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.992 && $teff < 22.520 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.630 && $teff < 21.991 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.435 && $teff < 21.629 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.740 && $teff < 21.434 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.543 && $teff < 20.739 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.537 && $teff < 19.542 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.909 && $teff < 18.536 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.470 && $teff < 17.908 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.469 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-13 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 23.269 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 22.813 && $teff < 23.268 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.207 && $teff < 22.812 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.691 && $teff < 22.206 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.266 && $teff < 21.690 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.841 && $teff < 21.265 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.494 && $teff < 20.840 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.225 && $teff < 20.493 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.644 && $teff < 20.224 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.752 && $teff < 19.643 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.985 && $teff < 18.751 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.472 && $teff < 17.984 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.085 && $teff < 17.471 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.084 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-14 RTEMP 22
   elif (( $rtemp >= 21.55 && $rtemp < 22.5 ))
   then
      if (( $teff > 22.241 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 21.647 && $teff < 22.240 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.855 && $teff < 21.646 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.298 && $teff < 20.854 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.974 && $teff < 20.297 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.651 && $teff < 19.973 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.314 && $teff < 19.650 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.962 && $teff < 19.313 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.509 && $teff < 18.961 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 17.952 && $teff < 18.508 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.456 && $teff < 17.951 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.079 && $teff < 17.455 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.763 && $teff < 17.078 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.762 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 06-15 RTEMP 21
   elif (( $rtemp < 21.55 ))
   then
      if (( $teff > 21.415 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 20.709 && $teff < 21.414 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.769 && $teff < 20.708 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.178 && $teff < 19.768 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.937 && $teff < 19.177 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.695 && $teff < 18.936 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.365 && $teff < 18.694 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.948 && $teff < 18.364 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 17.596 && $teff < 17.947 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 17.310 && $teff < 17.595 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.031 && $teff < 17.309 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 16.764 && $teff < 17.030 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.504 && $teff < 16.763 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.503 ))
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

