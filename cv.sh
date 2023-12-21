#!/bin/bash

#Warna
black="\033[1;30m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
purple="\033[1;35m"
cyan="\033[1;36m"
violate="\033[1;37m"
white="\033[0;37m"
nc="\033[00m"
LRED='\033[01;31m'
LGREEN='\033[01;32m'
LYELLOW='\033[01;33m'
LBLUE='\033[01;34m'
LPURPLE='\033[01;35m'
LCYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\e[100;92m'

createnew(){
  clear
  toilet -f future -F metal "CV-Baharu"
  echo -e "
  ${purple}TENTANG
  ${LRED}_______
  "
  needname(){
    printf "${LYELLOW}NAMA${LRED}: "
    read name
    if [ -z $name ]; then
      clear
      echo -e "${LRED}Nama Harus Di Isi"
      sleep 1
      needname
    else
      needage(){
        printf "${LYELLOW}UMUR${LRED}: "
        read age
        if [ -z $age ]; then
          clear
          echo -e "${LRED}Umur Harus Di Isi"
          sleep 1
          needage
        else
          needaddress(){
            printf "${LYELLOW}ALAMAT${LRED}: "
            read address
            if [ -z $address ]; then
              clear
              echo -e "${LRED}Alamat Harus Di Isi"
              sleep 1
              needaddress
            else
              needphonenumber(){
                printf "${LYELLOW}NUMBER${LRED}: "
                read phonenumber
                if [ -z $phonenumber ]; then
                  clear
                  echo -e ${LRED}"Nombor Harus Di Isi"
                  sleep 1
                  needphonenumber
                else
                  needskil(){
                    printf "${LYELLOW}SKILL${LRED}: "
                    read skill
                    if [ -z $skill ]; then
                      clear
                      echo -e ${LRED}"Skill Harus Di Isi"
                      sleep 1
                      needskill
                    else
                      needemail(){
                        printf ${LYELLOW}"EMAIL (tanpa @gmail.com)${LRED}: "
                        read email
                        if [ -z $email ]; then
                          clear
                          echo -e ${LRED}"Email Harus Di Isi"
                          sleep 1
                          needemail
                        else
                          mailing="@gmail.com"
                          hasilemail=${email}${mailing}
                          menyimpancv
                        fi
                      }
                    fi
                  }
                fi
              }
            fi
          }
        fi
      }
    fi
  }
  needname
  needage
  needaddress
  needphonenumber
  needskil
  needemail
}

menyimpancv(){
  export name
  export age
  export address
  export phonenumber
  export skill
  export hasilemail
  if [ -d "mycv" ]; then
    cd mycv
    echo "MY CV" > cv.txt
    echo "_____" >> cv.txt
    echo "TENTANG" >> cv.txt
    echo "_______" >> cv.txt
    echo "NAMA: \"$name\"" >> cv.txt
    echo "UMUR: \"$age\"" >> cv.txt
    echo "ALAMAT: \"$address\"" >> cv.txt
    echo "NOMBOR: \"$phonenumber\"" >> cv.txt
    echo "SKILL: \"$skill\"" >> cv.txt
    echo "EMAIL: \"$hasilemail\"" >> cv.txt
    clear
    toilet -f future -F metal "Success Saved"
    echo -e "${LGREEN}CV anda tela di kemas kini"
    echo -e "Disimpan di file mycv"
    sleep 2
    mainmenu
  else
    mkdir mycv
    cd mycv
    echo "MY CV" > cv.txt
    echo "_____" >> cv.txt
    echo "TENTANG" >> cv.txt
    echo "_______" >> cv.txt
    echo "NAMA: \"$name\"" >> cv.txt
    echo "UMUR: \"$age\"" >> cv.txt
    echo "ALAMAT: \"$address\"" >> cv.txt
    echo "NOMBOR: \"$phonenumber\"" >> cv.txt
    echo "SKILL: \"$skill\"" >> cv.txt
    echo "EMAIL: \"$hasilemail\"" >> cv.txt
    clear
    toilet -f future -F metal "Success Saved"
    echo -e "${LGREEN}CV anda telah dibuat"
    echo -e "Disimpian di file mycv"
    sleep 2
    mainmenu
  fi
}

sejarahcv(){
  if [ -d "mycv" ]; then
    clear
    echo -e "${LRED}Kamu belum membuat CV"
    sleep 1
    mainmenu
  else
    cd mycv
    nano cv.txt
    mainmenu
  fi
}

repot(){
  clear
  toilet -f future -F metal "Repot SC"
  echo -e "
  ${LYELLOW}1) ${LCYAN}> ${LRED}Bug
  ${LYELLOW}2) ${LCYAN}> ${LRED}Require Fitur
  ${LYELLOW}3) ${LCYAN}> ${LRED}Tindakan Tidak Baik
  ${LYELLOW}0) ${LCYAN}> ${LRED}Kembali
  "
  printf "${WHITE}@${LYELLOW}Pilihan: "
  read tiperepot
  if [ -z $tiperepot ]; then
    clear
    echo -e "${LRED}Repot Harus Di Isi"
    sleep 1
    repot
  elif [ $tiperepot == "1" ]; then
    xdg-open https://Wa.me/60193020983
    mainmenu
  elif [ $tiperepot == "2" ]; then
    xdg-open https://Wa.me/60193020983
    mainmenu
  elif [ $tiperepot == "3" ]; then
    xdg-open https://Wa.me/60193020983
    mainmenu
  elif [ $tiperepot == "0" ]; then
    mainmenu
  else
    clear
    echo -e "${LRED}Tidak valid coba semula"
    sleep 1
    repot
  fi
}

loading(){
  clear
  echo -e "${red}Loading."
  sleep 0.6
  clear
  echo -e "${cyan}Loading.."
  sleep 0.6
  clear
  echo -e "${green}Loading..."
  sleep 0.6
  clear
  echo -e "${red}Loading."
  sleep 0.6
  mainmenu
}

mainmenu(){
  clear
  echo -e "${cyan}________________________${red}.
  ${LYELLOW}┏━┓┏┓${black}░${LYELLOW}┏┓${green}────${LYELLOW}┏━┳━┓${black}░░░░${LYELLOW}┏┓${black}░░░░░░░${cyan}|
  ${LYELLOW}┃┏┛┃┗┳┛┃╔══╗┃┃┃┃┃┏━┓${black}░${LYELLOW}┃┣┓┏━┓┏┳┓${cyan}|
  ${LYELLOW}┃┗┓┗┓┃┏┛╚══╝┃┃┃┃┃┃╋┗┓┃━┫┃┻┫┃┏┛${cyan}|
  ${LYELLOW}┗━┛${black}░${LYELLOW}┗━┛${black}░${green}────${LYELLOW}┗┻━┻┛┗━━┛┗┻┛┗━┛┗┛${black}░${cyan}|
                      ${red}[ ${BOLD}Talz666${nc} ${red}]
  "
  echo -e "${LRED}1 ${LYELLOW}- ${green}Buat CV"
  sleep 1
  echo -e "${LRED}2 ${LYELLOW}- ${green}Sejarah CV"
  sleep 1
  echo -e "${LRED}3 ${LYELLOW}- ${green}Repot"
  sleep 1
  echo -e "${LRED}0 ${LYELLOW}- ${green}Keluar
  "
  sleep 1
  printf "${LCYAN}CV${white}@${purple}Maker: "
  read choose
  if [ -z $choose ]; then
    clear
    echo -e "${LRED}Text harus di masukan"
    sleep 1
    mainmenu
  elif [ $choose == "1" ]; then
    createnew
  elif [ $choose == "2" ]; then
    sejarahcv
  elif [ $choose == "3" ]; then
    repot
  elif [ $choose == "0" ]; then
    clear
    toilet -f future -F metal "Cv-Maker"
    echo -e "${LCYAN}Thanks For Using"
  else
    clear
    echo -e "${LRED}Tidak valid coba semula"
    sleep 1
    mainmenu
  fi
}

if dpkg -l | grep -q "toilet"; then
  loading
else
  clear
  pkg install toilet
  loading
fi