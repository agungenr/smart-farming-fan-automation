#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 07-00 RH 60%

if (( $rh >= 57.5 && $rh < 62.5 ))
then

    echo "Loop 07 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###

   # LOOP 07-01 RTEMP 35
   if (( $rtemp >= 34.5 ))
   then
      if (( $teff > 36.370 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 35.529 && $teff < 36.369 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 34.409 && $teff < 35.528 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 32.966 && $teff < 34.408 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 31.199 && $teff < 32.965 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.432 && $teff < 31.198 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.062 && $teff < 29.431 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.087 && $teff < 28.061 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.219 && $teff < 27.086 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.459 && $teff < 26.218 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.779 && $teff < 25.458 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.259 && $teff < 24.778 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.819 && $teff < 24.258 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 23.818 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-02 RTEMP 34
   elif (( $rtemp >= 33.5 && $rtemp < 34.5 ))
   then
      if (( $teff > 35.290 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 34.475 && $teff < 35.289 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 33.391 && $teff < 34.474 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 32.049 && $teff < 33.390 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 30.449 && $teff < 32.048 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.849 && $teff < 30.448 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.588 && $teff < 28.848 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.667 && $teff < 27.587 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.862 && $teff < 26.666 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.173 && $teff < 25.861 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.518 && $teff < 25.172 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.930 && $teff < 24.517 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.376 && $teff < 23.929 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 23.375 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-03 RTEMP 33
   elif (( $rtemp >= 32.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 34.209 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 33.422 && $teff < 34.208 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.373 && $teff < 33.421 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.132 && $teff < 32.372 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.699 && $teff < 31.131 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.266 && $teff < 29.698 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.115 && $teff < 28.265 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.247 && $teff < 27.114 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.505 && $teff < 26.246 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.888 && $teff < 25.504 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.258 && $teff < 24.887 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.602 && $teff < 24.257 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.933 && $teff < 23.601 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.932 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-04 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 32.5 ))
   then
      if (( $teff > 33.126 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 32.368 && $teff < 33.125 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.358 && $teff < 32.367 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.219 && $teff < 31.357 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.953 && $teff < 30.218 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.686 && $teff < 28.952 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.640 && $teff < 27.685 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.815 && $teff < 26.639 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.123 && $teff < 25.814 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.563 && $teff < 25.122 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.958 && $teff < 24.562 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.265 && $teff < 23.957 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.528 && $teff < 23.264 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.527 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-05 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 32.031 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 31.310 && $teff < 32.030 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.350 && $teff < 31.309 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.320 && $teff < 30.349 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.220 && $teff < 29.319 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.120 && $teff < 28.219 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.158 && $teff < 27.119 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.333 && $teff < 26.157 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.640 && $teff < 25.332 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.080 && $teff < 24.639 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.505 && $teff < 24.079 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.898 && $teff < 23.504 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.275 && $teff < 22.897 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.274 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-06 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 30.937 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 30.253 && $teff < 30.936 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.343 && $teff < 30.252 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.422 && $teff < 29.342 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.488 && $teff < 28.421 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.555 && $teff < 27.487 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.676 && $teff < 26.554 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.851 && $teff < 25.675 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.158 && $teff < 24.850 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.598 && $teff < 24.157 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.051 && $teff < 23.597 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.530 && $teff < 23.050 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.021 && $teff < 22.529 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.020 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-07 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 29.844 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 29.183 && $teff < 29.843 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.303 && $teff < 29.182 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.460 && $teff < 28.302 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.653 && $teff < 27.459 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.845 && $teff < 26.652 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.049 && $teff < 25.844 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.263 && $teff < 25.048 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.559 && $teff < 24.262 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.936 && $teff < 23.558 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.363 && $teff < 22.935 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.888 && $teff < 22.362 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.462 && $teff < 21.887 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.461 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-08 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 28.755 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 28.094 && $teff < 28.754 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.214 && $teff < 28.093 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.403 && $teff < 27.213 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.662 && $teff < 26.402 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.920 && $teff < 25.661 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.205 && $teff < 24.919 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.518 && $teff < 24.204 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.784 && $teff < 23.517 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.004 && $teff < 22.783 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.322 && $teff < 22.003 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.834 && $teff < 21.321 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.444 && $teff < 20.833 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.443 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-09 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 27.666 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.005 && $teff < 27.665 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.125 && $teff < 27.004 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.347 && $teff < 26.124 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.670 && $teff < 25.346 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.994 && $teff < 24.669 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.362 && $teff < 23.993 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.772 && $teff < 23.361 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.009 && $teff < 22.771 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.072 && $teff < 22.008 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.280 && $teff < 21.071 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.780 && $teff < 20.279 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.426 && $teff < 19.779 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.425 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-10 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 26.664 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.074 && $teff < 26.663 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.288 && $teff < 26.073 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.590 && $teff < 25.287 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.979 && $teff < 24.589 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.369 && $teff < 23.978 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.788 && $teff < 23.368 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.238 && $teff < 22.787 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.474 && $teff < 22.237 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.495 && $teff < 21.473 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.670 && $teff < 20.494 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.151 && $teff < 19.669 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.785 && $teff < 19.150 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.784 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-11 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 25.721 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.249 && $teff < 25.720 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.620 && $teff < 25.248 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.034 && $teff < 24.619 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.488 && $teff < 24.033 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.943 && $teff < 23.487 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.395 && $teff < 22.942 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.845 && $teff < 22.394 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.099 && $teff < 21.844 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.156 && $teff < 21.098 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.347 && $teff < 20.155 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.805 && $teff < 19.346 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.396 && $teff < 18.804 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.395 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-12 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 24.779 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 24.424 && $teff < 24.778 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.953 && $teff < 24.423 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.477 && $teff < 23.952 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.997 && $teff < 23.476 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.517 && $teff < 22.996 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.003 && $teff < 22.516 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.453 && $teff < 22.002 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.724 && $teff < 21.452 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.817 && $teff < 20.723 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.024 && $teff < 19.816 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.458 && $teff < 19.023 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.007 && $teff < 18.457 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.006 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-13 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 23.713 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 23.243 && $teff < 23.712 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.617 && $teff < 23.242 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.101 && $teff < 22.616 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.695 && $teff < 22.100 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.290 && $teff < 21.694 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.853 && $teff < 21.289 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.386 && $teff < 20.852 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.799 && $teff < 20.385 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.092 && $teff < 19.798 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.458 && $teff < 19.091 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.971 && $teff < 18.457 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.557 && $teff < 17.970 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.556 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-14 RTEMP 22
   elif (( $rtemp >= 21.55 && $rtemp < 22.5 ))
   then
      if (( $teff > 22.736 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 22.110 && $teff < 22.735 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.276 && $teff < 22.109 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.691 && $teff < 21.275 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.353 && $teff < 20.690 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.015 && $teff < 20.352 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.659 && $teff < 20.014 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.284 && $teff < 19.658 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.851 && $teff < 19.283 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.358 && $teff < 18.850 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.898 && $teff < 18.357 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.504 && $teff < 17.897 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.142 && $teff < 17.503 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.141 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 07-15 RTEMP 21
   elif (( $rtemp < 21.55 ))
   then
      if (( $teff > 21.95 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 21.199 && $teff < 21.949 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.199 && $teff < 21.198 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.557 && $teff < 20.198 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.274 && $teff < 19.556 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.991 && $teff < 19.273 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.699 && $teff < 18.990 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.399 && $teff < 18.698 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.089 && $teff < 18.398 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 17.769 && $teff < 18.088 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.449 && $teff < 17.768 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.129 && $teff < 17.448 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.809 && $teff < 17.128 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.808 ))
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

