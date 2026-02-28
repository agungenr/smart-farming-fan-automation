#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 14-00 RH 95%

if (( $rh >= 92.5 && $rh < 97.5 ))
then

    echo "Loop 14 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###
   # LOOP 14-01 RTEMP 35
   if (( $rtemp >= 33.5 && $rtemp ))
   then
      if (( $teff > 42.388 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 41.479 && $teff < 42.387 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 40.268 && $teff < 41.478 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 39.057 && $teff < 40.267 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 37.846 && $teff < 39.056 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 36.635 && $teff < 37.845 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 35.424 && $teff < 36.634 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 34.214 && $teff < 35.423 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 33.003 && $teff < 34.213 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 31.792 && $teff < 33.002 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 30.581 && $teff < 31.791 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 29.370 && $teff < 30.580 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.159 && $teff < 29.369 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 28.158 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 14-02 RTEMP 32
   elif (( $rtemp >= 31.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 38.992 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 38.273 && $teff < 38.991 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 37.317 && $teff < 38.272 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 36.360 && $teff < 37.316 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 35.403 && $teff < 36.359 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 34.446 && $teff < 35.402 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 33.490 && $teff < 34.445 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.533 && $teff < 33.489 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 31.576 && $teff < 32.532 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 30.619 && $teff < 31.575 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.662 && $teff < 30.618 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.706 && $teff < 29.661 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.749 && $teff < 28.705 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 27.748 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 14-03 RTEMP 31
   elif (( $rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 37.435 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 36.788 && $teff < 37.434 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 35.927 && $teff < 36.787 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 35.066 && $teff < 35.926 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 34.205 && $teff < 35.065 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 33.344 && $teff < 34.204 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 32.483 && $teff < 33.343 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.622 && $teff < 32.482 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.761 && $teff < 31.621 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.900 && $teff < 30.760 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.039 && $teff < 29.899 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.178 && $teff < 29.038 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.317 && $teff < 28.177 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 27.316 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 14-04 RTEMP 30
   elif (( $rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 36.762 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 36.144 && $teff < 36.761 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 35.322 && $teff < 36.143 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 34.500 && $teff < 35.321 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 33.678 && $teff < 34.499 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 32.856 && $teff < 33.677 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 32.034 && $teff < 32.855 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.212 && $teff < 32.033 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.390 && $teff < 31.211 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.568 && $teff < 30.389 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.746 && $teff < 29.567 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.924 && $teff < 28.745 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.101 && $teff < 27.923 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 27.100 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 14-05 RTEMP 29
   elif (( $rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 36.030 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 35.454 && $teff < 36.029 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 34.686 && $teff < 35.453 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 33.919 && $teff < 34.685 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 33.152 && $teff < 33.918 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 32.384 && $teff < 33.151 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 31.617 && $teff < 32.383 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.849 && $teff < 31.616 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.082 && $teff < 30.848 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 29.315 && $teff < 30.081 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 28.547 && $teff < 29.314 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 27.780 && $teff < 28.546 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.012 && $teff < 27.779 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 27.011 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 14-06 RTEMP 28
   elif (( $rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 32.848 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 32.302 && $teff < 32.847 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.575 && $teff < 32.301 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.848 && $teff < 31.574 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 30.121 && $teff < 30.847 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 29.395 && $teff < 30.120 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 28.668 && $teff < 29.394 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.941 && $teff < 28.667 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.214 && $teff < 27.940 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.487 && $teff < 27.213 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.760 && $teff < 26.486 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.033 && $teff < 25.759 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.306 && $teff < 25.032 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 24.305 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 14-07 RTEMP 27
   elif (( $rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 30.491 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 29.952 && $teff < 30.490 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.236 && $teff < 29.951 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.519 && $teff < 29.235 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.803 && $teff < 28.518 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.086 && $teff < 27.802 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 26.370 && $teff < 27.085 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.653 && $teff < 26.369 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.937 && $teff < 25.652 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.220 && $teff < 24.936 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.504 && $teff < 24.219 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.787 && $teff < 23.503 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.071 && $teff < 22.786 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.070 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 14-08 RTEMP 26
   elif (( $rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 29.228 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 28.785 && $teff < 29.227 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.196 && $teff < 28.784 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.606 && $teff < 28.195 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.017 && $teff < 27.605 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.428 && $teff < 27.016 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.838 && $teff < 26.427 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.249 && $teff < 25.837 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.659 && $teff < 25.248 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.070 && $teff < 24.658 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.480 && $teff < 24.069 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.891 && $teff < 23.479 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.302 && $teff < 22.890 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.301 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 14-09 RTEMP 25
   elif (( $rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 28.630 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 28.231 && $teff < 28.629 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.700 && $teff < 28.230 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.169 && $teff < 27.699 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.638 && $teff < 27.168 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.107 && $teff < 26.637 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.576 && $teff < 26.106 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.045 && $teff < 25.575 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.514 && $teff < 25.044 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.983 && $teff < 24.513 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.453 && $teff < 23.982 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.922 && $teff < 23.452 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.391 && $teff < 22.921 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.390 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 14-10 RTEMP 24
   elif (( $rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 28.030 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.631 && $teff < 28.029 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.100 && $teff < 27.630 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.569 && $teff < 27.099 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.038 && $teff < 26.568 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.507 && $teff < 26.037 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.976 && $teff < 25.506 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.445 && $teff < 24.975 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.914 && $teff < 24.444 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.383 && $teff < 23.913 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.853 && $teff < 23.382 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.322 && $teff < 22.852 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.791 && $teff < 22.321 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.790 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 14-11 RTEMP 23
   elif (( $rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 27.430 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 27.031 && $teff < 27.429 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.500 && $teff < 27.030 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.969 && $teff < 26.499 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.438 && $teff < 25.968 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.907 && $teff < 25.437 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.376 && $teff < 24.906 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.845 && $teff < 24.375 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.314 && $teff < 23.844 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.783 && $teff < 23.313 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.253 && $teff < 22.782 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.722 && $teff < 22.252 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.191 && $teff < 21.721 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.190 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 14-12 RTEMP 22
   elif (( $rtemp >= 21.5 && $rtemp < 22.5 ))
   then
      if (( $teff > 26.830 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 26.431 && $teff < 26.829 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.900 && $teff < 26.430 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.369 && $teff < 25.899 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.838 && $teff < 25.368 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.307 && $teff < 24.837 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.776 && $teff < 24.306 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.245 && $teff < 23.775 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.714 && $teff < 23.244 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.183 && $teff < 22.713 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.653 && $teff < 22.182 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.122 && $teff < 21.652 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.591 && $teff < 21.121 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.590 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 14-13 RTEMP 21
   elif (( $rtemp >= 20.5 && $rtemp < 21.5 ))
   then
      if (( $teff > 26.230 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.831 && $teff < 26.229 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.300 && $teff < 25.830 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.769 && $teff < 25.299 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.238 && $teff < 24.768 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.707 && $teff < 24.237 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.176 && $teff < 23.706 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.645 && $teff < 23.175 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.114 && $teff < 22.644 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.583 && $teff < 22.113 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.053 && $teff < 21.582 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.522 && $teff < 21.052 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.991 && $teff < 20.521 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.990 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 14-14 RTEMP 20
   elif (( $rtemp < 20.5 ))
   then
      if (( $teff > 25.630 ))
      then
         windsp=0.0
         echo "Wind speed: " $windsp
      elif (( $teff > 25.231 && $teff < 25.629 ))
      then
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.700 && $teff < 25.230 ))
      then
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.169 && $teff < 24.699 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.638 && $teff < 24.168 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.107 && $teff < 23.637 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.576 && $teff < 23.106 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.045 && $teff < 22.575 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.514 && $teff < 22.044 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.983 && $teff < 21.513 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.453 && $teff < 20.982 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.922 && $teff < 20.452 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.391 && $teff < 19.921 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.390 ))
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

