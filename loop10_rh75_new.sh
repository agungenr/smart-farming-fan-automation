#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 10-00 RH 75%

if (( $rh >= 72.5 && $rh < 77.5 ))
then

    echo "Loop 10 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###

   # LOOP 10-01 RTEMP 35
   if (( $rtemp >= 34.5 ))
   then
      if (( $teff > 38.870 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 38.029 && $teff < 38.869 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 36.909 && $teff < 38.028 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 35.424 && $teff < 36.908 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 33.574 && $teff < 35.423 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 31.724 && $teff < 33.573 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 30.749 && $teff < 31.723 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.649 && $teff < 30.748 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.809 && $teff < 30.648 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.229 && $teff < 29.808 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.889 && $teff < 28.228 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.029 && $teff < 26.888 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.409 && $teff < 26.028 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 25.408 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-02 RTEMP 34
   elif (( $rtemp >= 33.5 && $rtemp < 34.5 ))
   then
      if (( $teff > 37.800 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 37.018 && $teff < 37.799 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 35.977 && $teff < 37.017 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 34.597 && $teff < 35.976 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 32.878 && $teff < 34.596 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 31.159 && $teff < 32.877 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 30.137 && $teff < 31.158 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.814 && $teff < 30.136 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.030 && $teff < 29.813 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.786 && $teff < 29.029 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.694 && $teff < 27.785 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.908 && $teff < 26.693 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.273 && $teff < 25.907 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 25.272 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-03 RTEMP 33
   elif (( $rtemp >= 32.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 36.731 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 36.008 && $teff < 36.730 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 35.045 && $teff < 36.007 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 33.769 && $teff < 35.044 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 32.181 && $teff < 33.768 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 30.593 && $teff < 32.180 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 29.526 && $teff < 30.592 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.979 && $teff < 29.525 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.252 && $teff < 28.978 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.343 && $teff < 28.251 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.500 && $teff < 27.342 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.786 && $teff < 26.499 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.138 && $teff < 25.785 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 25.137 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-04 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 32.5 ))
   then
      if (( $teff > 35.619 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 34.955 && $teff < 35.618 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 34.073 && $teff < 34.954 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 32.909 && $teff < 34.072 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 31.465 && $teff < 32.908 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 30.021 && $teff < 31.464 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.934 && $teff < 30.020 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.203 && $teff < 28.933 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.517 && $teff < 28.202 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.874 && $teff < 27.516 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.230 && $teff < 26.873 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.585 && $teff < 26.229 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.940 && $teff < 25.584 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 24.939 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-05 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 34.336 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 33.738 && $teff < 34.335 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.940 && $teff < 33.737 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.918 && $teff < 32.939 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 30.670 && $teff < 31.917 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.423 && $teff < 30.669 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.420 && $teff < 29.422 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.663 && $teff < 28.419 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.956 && $teff < 27.662 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.299 && $teff < 26.955 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.663 && $teff < 26.298 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.068 && $teff < 25.662 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.493 && $teff < 25.067 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 24.492 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-06 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 33.054 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 32.520 && $teff < 33.053 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.808 && $teff < 32.519 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.927 && $teff < 31.807 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.876 && $teff < 30.926 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.825 && $teff < 29.875 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.907 && $teff < 28.824 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.123 && $teff < 27.906 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.395 && $teff < 27.122 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.724 && $teff < 26.394 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.095 && $teff < 25.723 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.550 && $teff < 25.094 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.047 && $teff < 24.549 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 24.046 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-07 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 31.763 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 31.243 && $teff < 31.762 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.552 && $teff < 31.242 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.766 && $teff < 30.551 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.885 && $teff < 29.765 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.004 && $teff < 28.884 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.188 && $teff < 28.003 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.438 && $teff < 27.187 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.679 && $teff < 26.437 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.910 && $teff < 25.678 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.223 && $teff < 24.909 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.699 && $teff < 24.222 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.256 && $teff < 23.698 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 23.255 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-08 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 30.458 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 29.879 && $teff < 30.457 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.109 && $teff < 29.878 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.349 && $teff < 29.108 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.599 && $teff < 28.348 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.849 && $teff < 27.598 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.162 && $teff < 26.848 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.537 && $teff < 26.161 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.729 && $teff < 25.536 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.739 && $teff < 24.728 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.897 && $teff < 23.738 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.349 && $teff < 22.896 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.949 && $teff < 22.348 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.948 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-09 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 29.152 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 28.515 && $teff < 29.151 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.666 && $teff < 28.514 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.932 && $teff < 27.665 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.313 && $teff < 26.931 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.694 && $teff < 26.312 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.135 && $teff < 25.693 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.635 && $teff < 25.134 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.779 && $teff < 24.634 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.568 && $teff < 23.778 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.570 && $teff < 22.567 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.999 && $teff < 21.569 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.642 && $teff < 20.998 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.641 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-10 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 28 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.410 && $teff < 27.999 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.624 && $teff < 27.409 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.967 && $teff < 26.623 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.440 && $teff < 25.966 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.913 && $teff < 25.439 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.440 && $teff < 24.912 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.022 && $teff < 24.439 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.187 && $teff < 24.021 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.934 && $teff < 23.186 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.909 && $teff < 21.933 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.341 && $teff < 20.908 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.001 && $teff < 20.34 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.000 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-11 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 26.950 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.478 && $teff < 26.949 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.849 && $teff < 26.477 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.304 && $teff < 25.848 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.842 && $teff < 25.303 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.380 && $teff < 24.841 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.967 && $teff < 24.379 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.603 && $teff < 23.966 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.833 && $teff < 23.602 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.659 && $teff < 22.832 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.693 && $teff < 21.658 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.145 && $teff < 20.692 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.805 && $teff < 20.144 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.804 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-12 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 25.900 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.545 && $teff < 25.899 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.074 && $teff < 25.544 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.640 && $teff < 25.073 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.244 && $teff < 24.639 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.847 && $teff < 24.243 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.494 && $teff < 23.846 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.183 && $teff < 23.493 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.480 && $teff < 23.182 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.384 && $teff < 22.479 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.477 && $teff < 21.383 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.948 && $teff < 20.476 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.608 && $teff < 19.947 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.607 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-13 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 24.986 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 24.486 && $teff < 24.985 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.820 && $teff < 24.485 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.284 && $teff < 23.819 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.879 && $teff < 23.283 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.473 && $teff < 22.878 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.096 && $teff < 22.472 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.746 && $teff < 22.095 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.187 && $teff < 21.745 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.419 && $teff < 21.186 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.763 && $teff < 20.418 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.331 && $teff < 19.762 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.011 && $teff < 19.33 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.010 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-14 RTEMP 22
   elif (( $rtemp >= 21.55 && $rtemp < 22.5 ))
   then
      if (( $teff > 24.201 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 23.512 && $teff < 24.200 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.594 && $teff < 23.511 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.920 && $teff < 22.593 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.490 && $teff < 21.919 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.060 && $teff < 21.489 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.642 && $teff < 21.059 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.237 && $teff < 20.641 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.824 && $teff < 20.236 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.404 && $teff < 19.823 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.015 && $teff < 19.403 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.687 && $teff < 19.014 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.389 && $teff < 18.686 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.388 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 10-15 RTEMP 21
   elif (( $rtemp < 21.55 ))
   then
      if (( $teff > 23.570 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 22.729 && $teff < 23.569 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.609 && $teff < 22.728 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.824 && $teff < 21.608 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.374 && $teff < 20.823 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.924 && $teff < 20.373 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.474 && $teff < 19.923 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.024 && $teff < 19.473 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.729 && $teff < 19.023 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.589 && $teff < 18.728 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.414 && $teff < 18.588 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.169 && $teff < 18.413 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.889 && $teff < 18.168 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.888 ))
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

