#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 12-00 RH 85%

if (( $rh >= 82.5 && $rh < 87.5 ))
then

    echo "Loop 12 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###
   # LOOP 12-01 RTEMP 35
   if (( $rtemp >= 33.5 ))
   then
      if (( $teff > 40.802 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 39.889 && $teff < 40.801 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 38.673 && $teff < 39.888 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 37.457 && $teff < 38.672 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 36.242 && $teff < 37.456 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 35.026 && $teff < 36.241 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 33.810 && $teff < 35.025 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.594 && $teff < 33.809 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.378 && $teff < 32.593 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 30.162 && $teff < 31.377 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.946 && $teff < 30.161 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.730 && $teff < 28.945 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.514 && $teff < 27.729 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 26.513 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 12-02 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 37.399 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 36.677 && $teff < 37.398 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 35.715 && $teff < 36.676 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 34.754 && $teff < 35.714 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 33.793 && $teff < 34.753 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 32.831 && $teff < 33.792 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 31.870 && $teff < 32.830 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.908 && $teff < 31.869 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.947 && $teff < 30.907 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.985 && $teff < 29.946 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.024 && $teff < 28.984 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.062 && $teff < 28.023 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.101 && $teff < 27.061 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 26.100 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 12-03 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 35.872 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 35.220 && $teff < 35.871 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 34.354 && $teff < 35.219 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 33.487 && $teff < 34.353 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 32.620 && $teff < 33.486 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 31.753 && $teff < 32.619 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 30.886 && $teff < 31.752 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.020 && $teff < 30.885 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.153 && $teff < 30.019 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.286 && $teff < 29.152 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.419 && $teff < 28.285 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.552 && $teff < 27.418 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.686 && $teff < 26.551 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 25.685 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 12-04 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 35.042 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 34.443 && $teff < 35.041 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 33.647 && $teff < 34.442 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 32.850 && $teff < 33.646 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 32.053 && $teff < 32.849 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 31.256 && $teff < 32.052 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 30.460 && $teff < 31.255 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.663 && $teff < 30.459 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.866 && $teff < 29.662 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.070 && $teff < 28.865 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.273 && $teff < 28.069 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.476 && $teff < 27.272 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.679 && $teff < 26.475 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 25.678 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 12-05 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 34.285 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 33.719 && $teff < 34.284 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.965 && $teff < 33.718 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 32.211 && $teff < 32.964 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 31.456 && $teff < 32.210 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 30.702 && $teff < 31.455 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 29.948 && $teff < 30.701 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.194 && $teff < 29.947 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.440 && $teff < 29.193 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.686 && $teff < 28.439 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.932 && $teff < 27.685 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.178 && $teff < 26.931 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.424 && $teff < 26.177 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 25.423 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 12-06 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 31.672 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 31.123 && $teff < 31.671 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.393 && $teff < 31.122 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.664 && $teff < 30.392 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.934 && $teff < 29.663 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.204 && $teff < 28.933 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.474 && $teff < 28.203 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.744 && $teff < 27.473 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.014 && $teff < 26.743 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.284 && $teff < 26.013 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.554 && $teff < 25.283 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.825 && $teff < 24.553 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.095 && $teff < 23.824 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 23.094 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 12-07 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 29.515 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 28.976 && $teff < 29.514 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.258 && $teff < 28.975 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.540 && $teff < 28.257 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.823 && $teff < 27.539 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.105 && $teff < 26.822 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.387 && $teff < 26.104 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.670 && $teff < 25.386 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.952 && $teff < 24.669 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.234 && $teff < 23.951 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.517 && $teff < 23.233 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.799 && $teff < 22.516 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.081 && $teff < 21.798 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.080 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 12-08 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 28.336 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.879 && $teff < 28.335 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.270 && $teff < 27.878 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.662 && $teff < 27.269 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.053 && $teff < 26.661 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.445 && $teff < 26.052 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.836 && $teff < 25.444 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.228 && $teff < 24.835 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.619 && $teff < 24.227 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.011 && $teff < 23.618 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.402 && $teff < 23.010 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.794 && $teff < 22.401 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.185 && $teff < 21.793 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.184 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 12-09 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 27.710 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.294 && $teff < 27.709 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.741 && $teff < 27.293 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.187 && $teff < 26.740 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.634 && $teff < 26.186 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.080 && $teff < 25.633 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.527 && $teff < 25.079 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.974 && $teff < 24.526 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.420 && $teff < 23.973 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.867 && $teff < 23.419 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.313 && $teff < 22.866 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.760 && $teff < 22.312 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.206 && $teff < 21.759 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.205 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 12-10 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 27.110 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.694 && $teff < 27.109 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.141 && $teff < 26.693 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.587 && $teff < 26.140 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.034 && $teff < 25.586 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.480 && $teff < 25.033 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.927 && $teff < 24.479 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.374 && $teff < 23.926 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.820 && $teff < 23.373 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.267 && $teff < 22.819 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.713 && $teff < 22.266 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.160 && $teff < 21.712 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.606 && $teff < 21.159 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.605 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 12-11 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 26.510 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.094 && $teff < 26.509 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.541 && $teff < 26.093 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.987 && $teff < 25.540 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.434 && $teff < 24.986 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.880 && $teff < 24.433 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.327 && $teff < 23.879 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.774 && $teff < 23.326 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.220 && $teff < 22.773 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.667 && $teff < 22.219 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.113 && $teff < 21.666 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.560 && $teff < 21.112 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.006 && $teff < 20.559 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.005 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 12-12 RTEMP 22
   elif (( $rtemp >= 21.5 && $rtemp < 22.5 ))
   then
      if (( $teff > 25.910 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.494 && $teff < 25.909 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.941 && $teff < 25.493 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.387 && $teff < 24.940 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.834 && $teff < 24.386 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.280 && $teff < 23.833 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.727 && $teff < 23.279 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.174 && $teff < 22.726 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.620 && $teff < 22.173 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.067 && $teff < 21.619 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.513 && $teff < 21.066 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.960 && $teff < 20.512 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.406 && $teff < 19.959 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.405 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 12-13 RTEMP 21
   elif (( $rtemp >= 20.5 && $rtemp < 21.5 ))
   then
      if (( $teff > 25.310 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 24.894 && $teff < 25.309 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.341 && $teff < 24.893 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.787 && $teff < 24.340 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.234 && $teff < 23.786 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.680 && $teff < 23.233 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.127 && $teff < 22.679 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.574 && $teff < 22.126 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.020 && $teff < 21.573 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.467 && $teff < 21.019 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.913 && $teff < 20.466 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.360 && $teff < 19.912 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.806 && $teff < 19.359 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.805 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 12-14 RTEMP 20
   elif (( $rtemp < 20.5 ))
   then
      if (( $teff > 24.710 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 24.294 && $teff < 24.709 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.741 && $teff < 24.293 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.187 && $teff < 23.740 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.634 && $teff < 23.186 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.080 && $teff < 22.633 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.527 && $teff < 22.079 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.974 && $teff < 21.526 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.420 && $teff < 20.973 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.867 && $teff < 20.419 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.313 && $teff < 19.866 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.760 && $teff < 19.312 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.206 && $teff < 18.759 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.205 ))
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

