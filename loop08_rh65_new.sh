#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 08-00 RH 65%

if (( $rh >= 62.5 && $rh < 67.5 ))
then

    echo "Loop 08 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###

   # LOOP 08-01 RTEMP 35
   if (( $rtemp >= 34.5 ))
   then
      if (( $teff > 37.195 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 36.354 && $teff < 37.194 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 35.234 && $teff < 36.353 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 33.816 && $teff < 35.233 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 32.099 && $teff < 33.815 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 30.382 && $teff < 32.098 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 29.068 && $teff < 30.381 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.155 && $teff < 29.067 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.239 && $teff < 28.154 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.319 && $teff < 27.238 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.519 && $teff < 26.318 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.959 && $teff < 25.518 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.519 && $teff < 24.958 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 24.518 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-02 RTEMP 34
   elif (( $rtemp >= 33.5 && $rtemp < 34.5 ))
   then
      if (( $teff > 36.074 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 35.274 && $teff < 36.073 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 34.207 && $teff < 35.273 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 32.890 && $teff < 34.206 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 31.322 && $teff < 32.889 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.754 && $teff < 31.321 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.532 && $teff < 29.753 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.655 && $teff < 28.531 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.810 && $teff < 27.654 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.998 && $teff < 26.809 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.244 && $teff < 25.997 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.609 && $teff < 25.243 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.033 && $teff < 24.608 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 24.032 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-03 RTEMP 33
   elif (( $rtemp >= 32.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 34.954 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 34.193 && $teff < 34.953 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 33.180 && $teff < 34.192 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.964 && $teff < 33.179 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 30.545 && $teff < 31.963 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.126 && $teff < 30.544 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.996 && $teff < 29.125 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.155 && $teff < 27.995 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.382 && $teff < 27.154 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.676 && $teff < 26.381 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.969 && $teff < 25.675 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.259 && $teff < 24.968 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.548 && $teff < 24.258 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 23.547 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-04 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 32.5 ))
   then
      if (( $teff > 33.829 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 33.112 && $teff < 33.828 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.157 && $teff < 33.111 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.044 && $teff < 32.156 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.774 && $teff < 31.043 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.504 && $teff < 29.773 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.462 && $teff < 28.503 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.647 && $teff < 27.461 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.934 && $teff < 26.646 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.323 && $teff < 25.933 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.666 && $teff < 25.322 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.919 && $teff < 24.665 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.126 && $teff < 23.918 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 23.125 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-05 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 32.687 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 32.026 && $teff < 32.686 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.146 && $teff < 32.025 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.145 && $teff < 31.145 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.024 && $teff < 30.144 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.903 && $teff < 29.023 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.930 && $teff < 27.902 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.107 && $teff < 26.929 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.411 && $teff < 26.106 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.843 && $teff < 25.410 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.252 && $teff < 24.842 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.617 && $teff < 24.251 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.960 && $teff < 23.616 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.959 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-06 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 31.545 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 30.940 && $teff < 31.544 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.135 && $teff < 30.939 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.247 && $teff < 30.134 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.274 && $teff < 29.246 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.301 && $teff < 28.273 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.399 && $teff < 27.300 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.567 && $teff < 26.398 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.888 && $teff < 25.566 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.362 && $teff < 24.887 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.838 && $teff < 24.361 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.315 && $teff < 23.837 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.794 && $teff < 23.314 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.793 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-07 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 30.402 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 29.818 && $teff < 30.401 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.041 && $teff < 29.817 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.231 && $teff < 29.040 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.387 && $teff < 28.230 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.542 && $teff < 27.386 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.722 && $teff < 26.541 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.926 && $teff < 25.721 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.238 && $teff < 24.925 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.658 && $teff < 24.237 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.114 && $teff < 23.657 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.645 && $teff < 23.113 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.212 && $teff < 22.644 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.211 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-08 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 29.258 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 28.642 && $teff < 29.257 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.822 && $teff < 28.641 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.039 && $teff < 27.821 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.293 && $teff < 27.038 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.547 && $teff < 26.292 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.827 && $teff < 25.546 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.133 && $teff < 24.826 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.397 && $teff < 24.132 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.617 && $teff < 23.396 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.928 && $teff < 22.616 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.422 && $teff < 21.927 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.007 && $teff < 21.421 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.006 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-09 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 28.113 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.465 && $teff < 28.112 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.602 && $teff < 27.464 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.847 && $teff < 26.601 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.199 && $teff < 25.846 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.551 && $teff < 25.198 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.932 && $teff < 24.550 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.341 && $teff < 23.931 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.555 && $teff < 23.340 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.575 && $teff < 22.554 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.741 && $teff < 21.574 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.198 && $teff < 20.740 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.801 && $teff < 20.197 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.800 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-10 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 27.084 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.494 && $teff < 27.083 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.708 && $teff < 26.493 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.031 && $teff < 25.707 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.464 && $teff < 25.030 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.897 && $teff < 24.463 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.338 && $teff < 23.896 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.788 && $teff < 23.337 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.002 && $teff < 22.787 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.978 && $teff < 22.001 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.108 && $teff < 20.977 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.547 && $teff < 20.107 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.140 && $teff < 19.546 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.139 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-11 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 26.132 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.660 && $teff < 26.131 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.031 && $teff < 25.659 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.467 && $teff < 25.030 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.969 && $teff < 24.466 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.470 && $teff < 23.968 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.945 && $teff < 23.469 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.395 && $teff < 22.944 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.639 && $teff < 22.394 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.676 && $teff < 21.638 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.845 && $teff < 20.675 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.278 && $teff < 19.844 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.842 && $teff < 19.277 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.841 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-12 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 25.180 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 24.826 && $teff < 25.179 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.354 && $teff < 24.825 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.903 && $teff < 24.353 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.473 && $teff < 23.902 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.043 && $teff < 23.472 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.553 && $teff < 23.042 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.003 && $teff < 22.552 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.277 && $teff < 22.002 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.374 && $teff < 21.276 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.582 && $teff < 20.373 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.008 && $teff < 19.581 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.544 && $teff < 19.007 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.543 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-13 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 24.158 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 23.673 && $teff < 24.157 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.027 && $teff < 23.672 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.511 && $teff < 23.026 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.125 && $teff < 22.510 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.739 && $teff < 22.124 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.312 && $teff < 21.738 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.845 && $teff < 21.311 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.271 && $teff < 20.844 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.590 && $teff < 20.270 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.970 && $teff < 19.589 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.469 && $teff < 18.969 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.029 && $teff < 18.468 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.028 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-14 RTEMP 22
   elif (( $rtemp >= 21.55 && $rtemp < 22.5 ))
   then
      if (( $teff > 23.231 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 22.573 && $teff < 23.230 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.697 && $teff < 22.572 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.084 && $teff < 21.696 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.731 && $teff < 21.083 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.379 && $teff < 20.730 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.016 && $teff < 20.378 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.641 && $teff < 20.015 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.230 && $teff < 19.640 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.783 && $teff < 19.229 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.345 && $teff < 18.782 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.929 && $teff < 18.344 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.522 && $teff < 17.928 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.521 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 08-15 RTEMP 21
   elif (( $rtemp < 21.55 ))
   then
      if (( $teff > 22.485 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 21.689 && $teff < 22.484 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.629 && $teff < 21.688 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.937 && $teff < 20.628 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.612 && $teff < 19.936 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.287 && $teff < 19.611 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.974 && $teff < 19.286 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.674 && $teff < 18.973 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.394 && $teff < 18.673 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.134 && $teff < 18.393 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.844 && $teff < 18.133 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.494 && $teff < 17.843 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.114 && $teff < 17.493 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.113 ))
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

