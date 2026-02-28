#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 03-00 RH 40%

if (( $rh >= 37.5 && $rh < 42.5 ))
then

    echo "Loop 03 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###

   # LOOP 03-01 RTEMP 35
   if (( $rtemp >= 34.5 ))
   then
      if (( $teff > 34.690 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 33.759 && $teff < 34.689 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.519 && $teff < 33.758 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.974 && $teff < 32.518 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.124 && $teff < 30.973 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.274 && $teff < 29.123 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.787 && $teff < 27.273 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.662 && $teff < 25.786 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.879 && $teff < 24.661 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.439 && $teff < 23.878 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.029 && $teff < 23.438 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.679 && $teff < 23.028 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.359 && $teff < 22.678 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.358 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-02 RTEMP 34
   elif (( $rtemp >= 33.5 && $rtemp < 34.5 ))
   then
      if (( $teff > 33.690 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 32.759 && $teff < 33.689 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.519 && $teff < 32.758 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.075 && $teff < 31.518 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.428 && $teff < 30.074 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.780 && $teff < 28.427 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.416 && $teff < 26.779 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.336 && $teff < 25.415 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.575 && $teff < 24.335 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.135 && $teff < 23.574 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.697 && $teff < 23.134 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.261 && $teff < 22.696 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.827 && $teff < 22.26 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.826 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-03 RTEMP 33
   elif (( $rtemp >= 32.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 32.690 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 31.759 && $teff < 32.689 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.519 && $teff < 31.758 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.176 && $teff < 30.518 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.731 && $teff < 29.175 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.286 && $teff < 27.730 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.045 && $teff < 26.285 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.010 && $teff < 25.044 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.272 && $teff < 24.009 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.832 && $teff < 23.271 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.365 && $teff < 22.831 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.843 && $teff < 22.364 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.295 && $teff < 21.842 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.294 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-04 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 32.5 ))
   then
      if (( $teff > 31.690 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 30.760 && $teff < 31.689 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.522 && $teff < 30.759 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.280 && $teff < 29.521 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.035 && $teff < 28.279 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.789 && $teff < 27.034 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.674 && $teff < 25.788 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.688 && $teff < 24.673 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.967 && $teff < 23.687 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.510 && $teff < 22.966 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.010 && $teff < 22.509 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.427 && $teff < 22.009 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.801 && $teff < 21.426 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.800 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-05 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 30.692 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 29.768 && $teff < 30.691 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.536 && $teff < 29.767 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.393 && $teff < 28.535 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.338 && $teff < 27.392 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.284 && $teff < 26.337 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.299 && $teff < 25.283 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.385 && $teff < 24.298 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.656 && $teff < 23.384 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.113 && $teff < 22.655 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.568 && $teff < 22.112 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.016 && $teff < 21.567 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.462 && $teff < 21.015 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.461 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-06 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 29.694 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 28.775 && $teff < 29.693 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.550 && $teff < 28.774 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.506 && $teff < 27.549 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.642 && $teff < 26.505 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.778 && $teff < 25.641 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.924 && $teff < 24.777 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.081 && $teff < 23.923 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.345 && $teff < 23.080 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.717 && $teff < 22.344 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.125 && $teff < 21.716 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.605 && $teff < 21.124 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.123 && $teff < 20.604 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.122 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-07 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 28.703 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.810 && $teff < 28.702 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.622 && $teff < 27.809 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.654 && $teff < 26.621 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.906 && $teff < 25.653 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.159 && $teff < 24.905 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.403 && $teff < 24.158 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.638 && $teff < 23.402 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.893 && $teff < 22.637 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.168 && $teff < 21.892 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.525 && $teff < 21.167 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.048 && $teff < 20.524 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.653 && $teff < 20.047 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.652 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-08 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 27.723 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.889 && $teff < 27.722 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.779 && $teff < 26.888 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.853 && $teff < 25.778 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.112 && $teff < 24.852 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.370 && $teff < 24.111 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.662 && $teff < 23.369 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.987 && $teff < 22.661 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.229 && $teff < 21.986 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.389 && $teff < 21.228 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.689 && $teff < 20.388 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.269 && $teff < 19.688 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.989 && $teff < 19.268 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.988 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-09 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 26.742 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.968 && $teff < 26.741 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.936 && $teff < 25.967 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.053 && $teff < 24.935 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.317 && $teff < 24.052 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.581 && $teff < 23.316 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.920 && $teff < 22.580 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.335 && $teff < 21.919 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.565 && $teff < 21.334 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.610 && $teff < 20.564 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.853 && $teff < 19.609 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.490 && $teff < 18.852 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.325 && $teff < 18.489 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.324 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-10 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 25.785 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.108 && $teff < 25.784 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.207 && $teff < 25.107 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.407 && $teff < 24.206 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.710 && $teff < 23.406 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.012 && $teff < 22.709 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.388 && $teff < 22.011 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.838 && $teff < 21.387 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.061 && $teff < 20.837 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.057 && $teff < 20.060 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.268 && $teff < 19.056 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.911 && $teff < 18.267 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.770 && $teff < 17.910 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.769 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-11 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 24.844 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 24.290 && $teff < 24.843 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.553 && $teff < 24.289 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.866 && $teff < 23.552 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.228 && $teff < 22.865 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.589 && $teff < 22.227 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.995 && $teff < 21.588 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.445 && $teff < 20.994 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.665 && $teff < 20.444 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.653 && $teff < 19.664 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.850 && $teff < 18.652 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.465 && $teff < 17.849 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.288 && $teff < 17.464 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.287 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-12 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 23.903 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 23.473 && $teff < 23.902 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.900 && $teff < 23.472 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.324 && $teff < 22.899 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.745 && $teff < 22.323 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.167 && $teff < 21.744 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.603 && $teff < 21.166 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.053 && $teff < 20.602 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.268 && $teff < 20.052 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.250 && $teff < 19.267 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.433 && $teff < 18.249 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.018 && $teff < 17.432 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.805 && $teff < 17.017 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.804 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-13 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 23.312 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 22.791 && $teff < 23.311 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.098 && $teff < 22.790 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.502 && $teff < 22.097 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.002 && $teff < 21.501 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.501 && $teff < 21.001 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.993 && $teff < 20.500 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.476 && $teff < 19.992 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.834 && $teff < 19.475 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.066 && $teff < 18.833 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.440 && $teff < 18.065 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.098 && $teff < 17.439 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.898 && $teff < 17.097 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.897 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-14 RTEMP 22
   elif (( $rtemp >= 21.55 && $rtemp < 22.5 ))
   then
      if (( $teff > 22.862 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 22.213 && $teff < 22.861 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.350 && $teff < 22.212 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.706 && $teff < 21.349 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.279 && $teff < 20.705 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.853 && $teff < 20.278 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.400 && $teff < 19.852 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.920 && $teff < 19.399 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.437 && $teff < 18.919 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 17.951 && $teff < 18.436 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.542 && $teff < 17.950 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.287 && $teff < 17.541 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.109 && $teff < 17.286 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.108 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 03-15 RTEMP 21
   elif (( $rtemp < 21.55 ))
   then
      if (( $teff > 22.5 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 21.749 && $teff < 22.499 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.749 && $teff < 21.748 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.066 && $teff < 20.748 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.699 && $teff < 20.065 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.332 && $teff < 19.698 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.924 && $teff < 19.331 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.474 && $teff < 18.923 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.119 && $teff < 18.473 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 17.859 && $teff < 18.118 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.624 && $teff < 17.858 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.439 && $teff < 17.623 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.279 && $teff < 17.438 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.278 ))
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

