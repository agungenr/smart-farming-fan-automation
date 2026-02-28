#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 04-00 RH 45%

if (( $rh >= 42.5 && $rh < 47.5 ))
then

    echo "Loop 04 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###

   # LOOP 04-01 RTEMP 35
   if (( $rtemp >= 34.5 ))
   then
      if (( $teff > 34.705 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 33.819 && $teff < 34.704 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.639 && $teff < 33.818 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.120 && $teff < 32.638 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.262 && $teff < 31.119 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.403 && $teff < 29.261 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.918 && $teff < 27.402 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.805 && $teff < 25.917 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.029 && $teff < 24.804 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.589 && $teff < 24.028 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.164 && $teff < 23.588 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.769 && $teff < 23.163 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.389 && $teff < 22.768 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.388 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-02 RTEMP 34
   elif (( $rtemp >= 33.5 && $rtemp < 34.5 ))
   then
      if (( $teff > 33.705 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 32.819 && $teff < 33.704 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.639 && $teff < 32.818 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.221 && $teff < 31.638 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.565 && $teff < 30.220 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.909 && $teff < 28.564 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.558 && $teff < 26.908 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.513 && $teff < 25.557 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.770 && $teff < 24.512 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.330 && $teff < 23.769 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.882 && $teff < 23.329 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.417 && $teff < 22.881 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.944 && $teff < 22.416 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.943 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-03 RTEMP 33
   elif (( $rtemp >= 32.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 32.705 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 31.819 && $teff < 32.704 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.639 && $teff < 31.818 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.322 && $teff < 30.638 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.869 && $teff < 29.321 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.415 && $teff < 27.868 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.199 && $teff < 26.414 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.220 && $teff < 25.198 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.511 && $teff < 24.219 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.071 && $teff < 23.510 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.600 && $teff < 23.070 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.065 && $teff < 22.599 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.500 && $teff < 22.064 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.499 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-04 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 32.5 ))
   then
      if (( $teff > 31.705 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 30.820 && $teff < 31.704 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.640 && $teff < 30.819 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.425 && $teff < 29.639 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.172 && $teff < 28.424 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.920 && $teff < 27.171 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.836 && $teff < 25.919 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.920 && $teff < 24.835 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.233 && $teff < 23.919 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.776 && $teff < 23.232 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.277 && $teff < 22.775 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.693 && $teff < 22.276 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.067 && $teff < 21.692 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.066 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-05 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 30.706 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 29.823 && $teff < 30.705 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.648 && $teff < 29.822 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.532 && $teff < 28.647 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.476 && $teff < 27.531 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.420 && $teff < 26.475 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.456 && $teff < 25.419 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.585 && $teff < 24.455 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.878 && $teff < 23.584 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.335 && $teff < 22.877 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.789 && $teff < 22.334 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.238 && $teff < 21.788 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.683 && $teff < 21.237 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.682 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-06 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 29.707 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 28.827 && $teff < 29.706 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.655 && $teff < 28.826 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.639 && $teff < 27.654 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.779 && $teff < 26.638 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.920 && $teff < 25.778 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.077 && $teff < 24.919 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.250 && $teff < 24.076 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.522 && $teff < 23.249 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.894 && $teff < 22.521 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.302 && $teff < 21.893 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.782 && $teff < 21.301 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.299 && $teff < 20.781 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.298 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-07 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 28.716 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.862 && $teff < 28.715 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.725 && $teff < 27.861 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.786 && $teff < 26.724 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.045 && $teff < 25.785 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.305 && $teff < 25.044 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.553 && $teff < 24.304 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.788 && $teff < 23.552 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.048 && $teff < 22.787 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.330 && $teff < 22.047 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.692 && $teff < 21.329 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.210 && $teff < 20.691 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.808 && $teff < 20.209 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.807 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-08 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 27.736 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.944 && $teff < 27.735 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.889 && $teff < 26.943 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.993 && $teff < 25.888 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.255 && $teff < 24.992 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.518 && $teff < 24.254 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.812 && $teff < 23.517 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.137 && $teff < 22.811 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.394 && $teff < 22.136 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.584 && $teff < 21.393 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.899 && $teff < 20.583 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.464 && $teff < 19.898 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.154 && $teff < 19.463 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.153 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-09 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 26.757 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.026 && $teff < 26.756 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.053 && $teff < 26.025 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.200 && $teff < 25.052 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.465 && $teff < 24.199 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.731 && $teff < 23.464 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.070 && $teff < 22.730 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.485 && $teff < 22.069 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.740 && $teff < 21.484 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.838 && $teff < 20.739 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.106 && $teff < 19.837 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.718 && $teff < 19.105 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.500 && $teff < 18.717 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.499 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-10 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 25.805 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.172 && $teff < 25.804 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.328 && $teff < 25.171 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.557 && $teff < 24.327 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.860 && $teff < 23.556 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.162 && $teff < 22.859 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.538 && $teff < 22.161 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.988 && $teff < 21.537 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.240 && $teff < 20.987 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.294 && $teff < 20.239 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.531 && $teff < 19.293 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.135 && $teff < 18.530 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.923 && $teff < 18.134 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.922 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-11 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 24.872 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 24.359 && $teff < 24.871 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.676 && $teff < 24.358 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.016 && $teff < 23.675 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.378 && $teff < 23.015 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.739 && $teff < 22.377 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.145 && $teff < 21.738 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.595 && $teff < 21.144 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.842 && $teff < 20.594 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.885 && $teff < 19.841 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.100 && $teff < 18.884 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.662 && $teff < 18.099 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.396 && $teff < 17.661 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.395 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-12 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 23.939 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 23.547 && $teff < 23.938 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.024 && $teff < 23.546 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.474 && $teff < 23.023 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.895 && $teff < 22.473 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.317 && $teff < 21.894 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.753 && $teff < 21.316 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.203 && $teff < 20.752 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.444 && $teff < 20.202 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.476 && $teff < 19.443 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.670 && $teff < 18.475 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.189 && $teff < 17.669 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.869 && $teff < 17.188 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.868 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-13 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 23.068 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 22.587 && $teff < 23.067 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.948 && $teff < 22.586 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.392 && $teff < 21.947 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.919 && $teff < 21.391 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.447 && $teff < 20.918 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.964 && $teff < 20.446 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.472 && $teff < 19.963 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.844 && $teff < 19.471 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.080 && $teff < 18.843 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.437 && $teff < 18.079 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.036 && $teff < 17.436 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.756 && $teff < 17.035 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.755 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-14 RTEMP 22
   elif (( $rtemp >= 21.55 && $rtemp < 22.5 ))
   then
      if (( $teff > 22.304 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 21.698 && $teff < 22.303 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.892 && $teff < 21.697 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.305 && $teff < 20.891 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.938 && $teff < 20.304 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.570 && $teff < 19.937 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.173 && $teff < 19.569 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.746 && $teff < 19.172 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.265 && $teff < 18.745 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 17.730 && $teff < 18.264 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.273 && $teff < 17.729 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 16.971 && $teff < 17.272 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.746 && $teff < 16.97 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.745 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 04-15 RTEMP 21
   elif (( $rtemp < 21.55 ))
   then
      if (( $teff > 21.690 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 20.984 && $teff < 21.689 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.044 && $teff < 20.983 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.432 && $teff < 20.043 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.149 && $teff < 19.431 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.866 && $teff < 19.148 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.537 && $teff < 18.865 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.162 && $teff < 18.536 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 17.799 && $teff < 18.161 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 17.449 && $teff < 17.798 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.142 && $teff < 17.448 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 16.919 && $teff < 17.141 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.739 && $teff < 16.918 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.738 ))
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

