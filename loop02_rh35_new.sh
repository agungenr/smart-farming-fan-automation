#!/bin/zsh

# Program ini dijalankan dengan crontab dan akan mengeksekusi sub program loop01 atau loop02 dst
# Tergantung dari nilai kelembaban (RH) hasil sensor
# Yang diambil hanya nilai RH saja, sedangkan temperature diperlukan di sub program loop01 dst

# Membaca nilai rtemp dan rh dari rh.json
. /home/pi/sierad_fa/script/variabel.lib
tempsh

filespeed=/home/pi/sierad_fa/script/fansp.data

# LOOP 02-00 RH 35%

if (( $rh >= 32.5 && $rh < 37.5 ))
then

    echo "Loop 02 Executed!"

    # Membaca nilai dayold, vlookup ke dayold_teff.tabel, dan tulis hasilnya (teff) ke rh.json
    . /home/pi/sierad_fa/script/lookup_dayold_teff.lib
    lookupdt

   teff=$(awk 'NR==4' $file | awk -F ":" '{print $2}' | sed 's/,/ /g')
   echo "teff: " $teff
   echo "rtemp:" $rtemp
   echo "rh: " $rh

###

   # LOOP 02-01 RTEMP 35
   if (($rtemp >= 34.5 ))
   then
      if (( $teff > 34.675 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 33.699 && $teff < 34.674 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 32.399 && $teff < 33.698 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 30.828 && $teff < 32.398 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.987 && $teff < 30.827 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 27.145 && $teff < 28.986 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.655 && $teff < 27.144 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.518 && $teff < 25.654 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.729 && $teff < 24.517 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.289 && $teff < 23.728 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.894 && $teff < 23.288 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.589 && $teff < 22.893 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.329 && $teff < 22.588 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 22.328 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-02 RTEMP 34
   elif (($rtemp >= 33.5 && $rtemp < 34.5 ))
   then
      if (( $teff > 33.675 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 32.699 && $teff < 33.674 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 31.399 && $teff < 32.698 ))
     then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.929 && $teff < 31.398 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 28.290 && $teff < 29.928 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.651 && $teff < 28.289 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 25.274 && $teff < 26.650 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.158 && $teff < 25.273 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.381 && $teff < 24.157 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.941 && $teff < 23.380 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.512 && $teff < 22.940 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.105 && $teff < 22.511 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.709 && $teff < 22.104 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.708 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-03 RTEMP 33
   elif (($rtemp >= 32.5 && $rtemp < 33.5 ))
   then
      if (( $teff > 32.675 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 31.699 && $teff < 32.674 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 30.399 && $teff < 31.698 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 29.031 && $teff < 30.398 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 27.594 && $teff < 29.030 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 26.157 && $teff < 27.593 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.892 && $teff < 26.156 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.799 && $teff < 24.891 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.033 && $teff < 23.798 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.593 && $teff < 23.032 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.130 && $teff < 22.592 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.621 && $teff < 22.129 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.090 && $teff < 21.620 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 21.089 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-04 RTEMP 32
   elif (($rtemp >= 31.5 && $rtemp < 32.5 ))
   then
      if (( $teff > 31.676 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 30.701 && $teff < 31.675 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 29.403 && $teff < 30.700 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 28.135 && $teff < 29.402 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.897 && $teff < 28.134 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.659 && $teff < 26.896 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.512 && $teff < 25.658 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.457 && $teff < 24.511 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.701 && $teff < 23.456 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.244 && $teff < 22.700 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.744 && $teff < 22.243 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.161 && $teff < 21.743 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.535 && $teff < 21.160 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.534 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-05 RTEMP 31
   elif (($rtemp >= 30.5 && $rtemp < 31.5 ))
   then
      if (( $teff > 30.678 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 29.712 && $teff < 30.677 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 28.425 && $teff < 29.711 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 27.254 && $teff < 28.424 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 26.201 && $teff < 27.253 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 25.147 && $teff < 26.200 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 24.142 && $teff < 25.146 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.185 && $teff < 24.141 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.435 && $teff < 23.184 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.892 && $teff < 22.434 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.346 && $teff < 21.891 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.795 && $teff < 21.345 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.240 && $teff < 20.794 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 20.239 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-06 RTEMP 30
   elif (($rtemp >= 29.5 && $rtemp < 30.5 ))
   then
      if (( $teff > 29.681 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 28.723 && $teff < 29.680 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 27.446 && $teff < 28.722 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 26.373 && $teff < 27.445 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 25.504 && $teff < 26.372 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.635 && $teff < 25.503 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.771 && $teff < 24.634 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.912 && $teff < 23.770 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.169 && $teff < 22.911 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.540 && $teff < 22.168 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.948 && $teff < 21.539 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.429 && $teff < 20.947 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.946 && $teff < 20.428 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.945 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-07 RTEMP 29
   elif (($rtemp >= 28.5 && $rtemp < 29.5 ))
   then
      if (( $teff > 28.690 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 27.759 && $teff < 28.689 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 26.519 && $teff < 27.758 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 25.522 && $teff < 26.518 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 24.767 && $teff < 25.521 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 24.012 && $teff < 24.766 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 23.253 && $teff < 24.011 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.488 && $teff < 23.252 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.739 && $teff < 22.487 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.005 && $teff < 21.738 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.358 && $teff < 21.004 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.885 && $teff < 20.357 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.499 && $teff < 19.884 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 19.498 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-08 RTEMP 28
   elif (($rtemp >= 27.5 && $rtemp < 28.5 ))
   then
      if (( $teff > 27.709 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 26.834 && $teff < 27.708 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 25.669 && $teff < 26.833 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 24.714 && $teff < 25.668 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.968 && $teff < 24.713 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 23.222 && $teff < 23.967 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 22.512 && $teff < 23.221 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.837 && $teff < 22.511 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.064 && $teff < 21.836 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.194 && $teff < 21.063 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.479 && $teff < 20.193 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.074 && $teff < 19.478 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.824 && $teff < 19.073 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.823 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-09 RTEMP 27
   elif (($rtemp >= 26.5 && $rtemp < 27.5 ))
   then
      if (( $teff > 26.728 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 25.909 && $teff < 26.727 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.819 && $teff < 25.908 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.906 && $teff < 24.818 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 23.169 && $teff < 23.905 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 22.432 && $teff < 23.168 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.770 && $teff < 22.431 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.185 && $teff < 21.769 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.389 && $teff < 21.184 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 19.383 && $teff < 20.388 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.600 && $teff < 19.382 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 18.263 && $teff < 18.599 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.149 && $teff < 18.262 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 18.148 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-10 RTEMP 26
   elif (($rtemp >= 25.5 && $rtemp < 26.5 ))
   then
      if (( $teff > 25.766 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 25.045 && $teff < 25.765 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 24.086 && $teff < 25.044 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 23.257 && $teff < 24.085 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.560 && $teff < 23.256 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.862 && $teff < 22.559 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 21.238 && $teff < 21.861 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.688 && $teff < 21.237 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.882 && $teff < 20.687 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.820 && $teff < 19.881 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.006 && $teff < 18.819 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.687 && $teff < 18.005 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.617 && $teff < 17.686 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.616 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-11 RTEMP 25
   elif (($rtemp >= 24.5 && $rtemp < 25.5 ))
   then
      if (( $teff > 24.816 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 24.222 && $teff < 24.815 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 23.430 && $teff < 24.221 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.716 && $teff < 23.429 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 22.078 && $teff < 22.715 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.439 && $teff < 22.077 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.845 && $teff < 21.438 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 20.295 && $teff < 20.844 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.488 && $teff < 20.294 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.422 && $teff < 19.487 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.600 && $teff < 18.421 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.268 && $teff < 17.599 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.179 && $teff < 17.267 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.178 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-12 RTEMP 24
   elif (($rtemp >= 23.5 && $rtemp < 24.5 ))
   then
      if (( $teff > 23.867 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 23.399 && $teff < 23.866 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.775 && $teff < 23.398 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 22.174 && $teff < 22.774 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.595 && $teff < 22.173 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 21.017 && $teff < 21.594 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.453 && $teff < 21.016 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.903 && $teff < 20.452 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 19.093 && $teff < 19.902 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.024 && $teff < 19.092 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.195 && $teff < 18.023 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 16.848 && $teff < 17.194 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 16.742 && $teff < 16.847 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 16.741 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-13 RTEMP 23
   elif (($rtemp >= 22.5 && $rtemp < 23.5 ))
   then
      if (( $teff > 23.555 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 22.995 && $teff < 23.554 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 22.249 && $teff < 22.994 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.612 && $teff < 22.248 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 21.084 && $teff < 21.611 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.556 && $teff < 21.083 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 20.021 && $teff < 20.555 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.480 && $teff < 20.020 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.823 && $teff < 19.479 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.052 && $teff < 18.822 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.444 && $teff < 18.051 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.161 && $teff < 17.443 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.041 && $teff < 17.160 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.040 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-14 RTEMP 22
   elif (($rtemp >= 21.55 && $rtemp < 22.5 ))
   then
      if (( $teff > 23.419 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 22.728 && $teff < 23.418 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.808 && $teff < 22.727 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 21.106 && $teff < 21.807 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.621 && $teff < 21.105 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 20.136 && $teff < 20.620 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.628 && $teff < 20.135 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 19.095 && $teff < 19.627 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.610 && $teff < 19.094 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.172 && $teff < 18.609 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 17.811 && $teff < 18.171 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.603 && $teff < 17.810 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.472 && $teff < 17.602 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.471 ))
      then
         windsp=2.5
         echo "Wind speed: " $windsp
      fi

   # LOOP 02-15 RTEMP 21
   elif (($rtemp < 21.55 ))
   then
      if (( $teff > 23.310 ))
      then 
         windsp=0.0
         echo "Wind speed: " $windsp 
      elif (( $teff > 22.514 && $teff < 23.309 ))
      then 
         windsp=0.1
         echo "Wind speed: " $windsp
      elif (( $teff > 21.454 && $teff < 22.513 ))
      then 
         windsp=0.3
         echo "Wind speed: " $windsp
      elif (( $teff > 20.699 && $teff < 21.453 ))
      then
         windsp=0.5
         echo "Wind speed: " $windsp
      elif (( $teff > 20.249 && $teff < 20.698 ))
      then
         windsp=0.7
         echo "Wind speed: " $windsp
      elif (( $teff > 19.799 && $teff < 20.248 ))
      then
         windsp=0.9
         echo "Wind speed: " $windsp
      elif (( $teff > 19.312 && $teff < 19.798 ))
      then
         windsp=1.1
         echo "Wind speed: " $windsp
      elif (( $teff > 18.787 && $teff < 19.311 ))
      then
         windsp=1.3
         echo "Wind speed: " $windsp
      elif (( $teff > 18.439 && $teff < 18.786 ))
      then
         windsp=1.5
         echo "Wind speed: " $windsp
      elif (( $teff > 18.269 && $teff < 18.438 ))
      then
         windsp=1.7
         echo "Wind speed: " $windsp
      elif (( $teff > 18.107 && $teff < 18.268 ))
      then
         windsp=1.9
         echo "Wind speed: " $windsp
      elif (( $teff > 17.959 && $teff < 18.106 ))
      then
         windsp=2.1
         echo "Wind speed: " $windsp
      elif (( $teff > 17.819 && $teff < 17.958 ))
      then
         windsp=2.3
         echo "Wind speed: " $windsp
      elif (( $teff < 17.818 ))
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


