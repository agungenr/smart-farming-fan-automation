#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 13-00 RH 90%

if (( $rh >= 87.5 && $rh < 92.5 ))
then

    echo "Loop 13 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###
   # LOOP 13-01 RTEMP 35
   if (( $rtemp >= 33.5 ))
   then
      if (( $teff > 41.578 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 40.672 && $teff < 41.577 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 39.464 && $teff < 40.671 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 38.256 && $teff < 39.463 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 37.049 && $teff < 38.255 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 35.841 && $teff < 37.048 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 34.633 && $teff < 35.840 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 33.426 && $teff < 34.632 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 32.218 && $teff < 33.425 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 31.010 && $teff < 32.217 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.803 && $teff < 31.009 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.595 && $teff < 29.802 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.387 && $teff < 28.594 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 27.386 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 13-02 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 38.207 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 37.479 && $teff < 38.206 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 36.509 && $teff < 37.478 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 35.539 && $teff < 36.508 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 34.569 && $teff < 35.538 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 33.599 && $teff < 34.568 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 32.629 && $teff < 33.598 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.660 && $teff < 32.628 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.690 && $teff < 31.659 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.720 && $teff < 30.689 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.750 && $teff < 29.719 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.780 && $teff < 28.749 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.810 && $teff < 27.779 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 26.809 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 13-03 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 36.701 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 36.050 && $teff < 36.700 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 35.183 && $teff < 36.049 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 34.317 && $teff < 35.182 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 33.450 && $teff < 34.316 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 32.584 && $teff < 33.449 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 31.717 && $teff < 32.583 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.851 && $teff < 31.716 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.984 && $teff < 30.850 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.118 && $teff < 29.983 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.251 && $teff < 29.117 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.385 && $teff < 28.250 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.518 && $teff < 27.384 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 26.517 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 13-04 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 35.890 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 35.281 && $teff < 35.889 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 34.470 && $teff < 35.280 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 33.659 && $teff < 34.469 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 32.848 && $teff < 33.658 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 32.038 && $teff < 32.847 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 31.227 && $teff < 32.037 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.416 && $teff < 31.226 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.605 && $teff < 30.415 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.794 && $teff < 29.604 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.983 && $teff < 28.793 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.172 && $teff < 27.982 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.361 && $teff < 27.171 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 26.360 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 13-05 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 35.100 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 34.535 && $teff < 35.099 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 33.783 && $teff < 34.534 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 33.031 && $teff < 33.782 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 32.278 && $teff < 33.030 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 31.526 && $teff < 32.277 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 30.774 && $teff < 31.525 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.022 && $teff < 30.773 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.270 && $teff < 30.021 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.518 && $teff < 29.269 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.766 && $teff < 28.517 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.014 && $teff < 27.765 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.262 && $teff < 27.013 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 26.261 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 13-06 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 32.277 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 31.731 && $teff < 32.276 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.003 && $teff < 31.730 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.275 && $teff < 31.002 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.548 && $teff < 30.274 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.820 && $teff < 29.547 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.093 && $teff < 28.819 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.365 && $teff < 28.092 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.637 && $teff < 27.364 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.910 && $teff < 26.636 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.182 && $teff < 25.909 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.454 && $teff < 25.181 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.727 && $teff < 24.453 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 23.726 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 13-07 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 29.991 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 29.452 && $teff < 29.990 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.736 && $teff < 29.451 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.019 && $teff < 28.735 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.303 && $teff < 28.018 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.586 && $teff < 27.302 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.870 && $teff < 26.585 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.153 && $teff < 25.869 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.437 && $teff < 25.152 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.720 && $teff < 24.436 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.004 && $teff < 23.719 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.287 && $teff < 23.003 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.571 && $teff < 22.286 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.570 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 13-08 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 28.794 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 28.344 && $teff < 28.793 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.744 && $teff < 28.343 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.145 && $teff < 27.743 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.545 && $teff < 27.144 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.946 && $teff < 26.544 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.346 && $teff < 25.945 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.746 && $teff < 25.345 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.147 && $teff < 24.745 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.547 && $teff < 24.146 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.948 && $teff < 23.546 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.348 && $teff < 22.947 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.749 && $teff < 22.347 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.748 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 13-09 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 28.196 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.789 && $teff < 28.195 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.248 && $teff < 27.788 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.707 && $teff < 27.247 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.166 && $teff < 26.706 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.625 && $teff < 26.165 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.084 && $teff < 25.624 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.543 && $teff < 25.083 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.002 && $teff < 24.542 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.461 && $teff < 24.001 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.920 && $teff < 23.460 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.379 && $teff < 22.919 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.838 && $teff < 22.378 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.837 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 13-10 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 27.596 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.189 && $teff < 27.595 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.648 && $teff < 27.188 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.107 && $teff < 26.647 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.566 && $teff < 26.106 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.025 && $teff < 25.565 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.484 && $teff < 25.024 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.943 && $teff < 24.483 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.402 && $teff < 23.942 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.861 && $teff < 23.401 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.320 && $teff < 22.860 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.779 && $teff < 22.319 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.238 && $teff < 21.778 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.237 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 13-11 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 26.996 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.589 && $teff < 26.995 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.048 && $teff < 26.588 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.507 && $teff < 26.047 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.966 && $teff < 25.506 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.425 && $teff < 24.965 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.884 && $teff < 24.424 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.343 && $teff < 23.883 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.802 && $teff < 23.342 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.261 && $teff < 22.801 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.720 && $teff < 22.260 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.179 && $teff < 21.719 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.638 && $teff < 21.178 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.637 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 13-12 RTEMP 22
   elif (( $rtemp >= 21.5 && $rtemp < 22.5 ))
   then
      if (( $teff > 26.396 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.989 && $teff < 26.395 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.448 && $teff < 25.988 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.907 && $teff < 25.447 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.366 && $teff < 24.906 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.825 && $teff < 24.365 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.284 && $teff < 23.824 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.743 && $teff < 23.283 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.202 && $teff < 22.742 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.661 && $teff < 22.201 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.120 && $teff < 21.660 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.579 && $teff < 21.119 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.038 && $teff < 20.578 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.037 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 13-13 RTEMP 21
   elif (( $rtemp >= 20.5 && $rtemp < 21.5 ))
   then
      if (( $teff > 25.796 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.389 && $teff < 25.795 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.848 && $teff < 25.388 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.307 && $teff < 24.847 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.766 && $teff < 24.306 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.225 && $teff < 23.765 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.684 && $teff < 23.224 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.143 && $teff < 22.683 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.602 && $teff < 22.142 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.061 && $teff < 21.601 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.520 && $teff < 21.060 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.979 && $teff < 20.519 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.438 && $teff < 19.978 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.437 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 13-14 RTEMP 20
   elif (( $rtemp < 20.5 ))
   then
      if (( $teff > 25.196 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 24.789 && $teff < 25.195 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.248 && $teff < 24.788 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.707 && $teff < 24.247 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.166 && $teff < 23.706 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.625 && $teff < 23.165 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.084 && $teff < 22.624 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.543 && $teff < 22.083 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.002 && $teff < 21.542 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.461 && $teff < 21.001 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.920 && $teff < 20.460 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.379 && $teff < 19.919 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.838 && $teff < 19.378 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.837 ))
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

