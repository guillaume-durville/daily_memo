#!/bin/bash
#this script is used to get tcp and udp connetion status
#tcp status
metric=$1
tmp_file=/tmp/tcp_status.txt
#/bin/netstat -an|awk '/^tcp/{++S[$NF]}END{for(a in S) print a,S[a]}' > $tmp_file
/usr/sbin/ss  -tan|awk 'NR>1{++S[$1]}END{for (a in S) print a,S[a]}' > $tmp_file
 
#ESTAB
#SYN-SENT
#SYN-RECV
#FIN-WAIT-1
#FIN-WAIT-2
#TIME-WAIT
#UNCONN
#CLOSE-WAIT
#LAST-ACK
#LISTEN
#CLOSING
 
 
 
case $metric in
   closed)
          output=$(awk '/UNCONN/{print $2}' $tmp_file)
          if [ "$output" == "" ];then
             echo 0
          else
             echo $output
          fi
        ;;
   listen)
          output=$(awk '/LISTEN/{print $2}' $tmp_file)
          if [ "$output" == "" ];then
             echo 0
          else
             echo $output
          fi
        ;;
   synrecv)
          output=$(awk '/SYN-RECV/{print $2}' $tmp_file)
          if [ "$output" == "" ];then
             echo 0
          else
             echo $output
          fi
        ;;
   synsent)
          output=$(awk '/SYN-SENT/{print $2}' $tmp_file)
          if [ "$output" == "" ];then
             echo 0
          else
             echo $output
          fi
        ;;
   established)
          output=$(awk '/ESTAB/{print $2}' $tmp_file)
          if [ "$output" == "" ];then
             echo 0
          else
             echo $output
          fi
        ;;
   timewait)
          output=$(awk '/TIME-WAIT/{print $2}' $tmp_file)
          if [ "$output" == "" ];then
             echo 0
          else
             echo $output
          fi
        ;;
   closing)
          output=$(awk '/CLOSING/{print $2}' $tmp_file)
          if [ "$output" == "" ];then
             echo 0
          else
             echo $output
          fi
        ;;
   closewait)
          output=$(awk '/CLOSE-WAIT/{print $2}' $tmp_file)
          if [ "$output" == "" ];then
             echo 0
          else
             echo $output
          fi
        ;;
   lastack)
          output=$(awk '/LAST-ACK/{print $2}' $tmp_file)
          if [ "$output" == "" ];then
             echo 0
          else
             echo $output
          fi
         ;;
   finwait1)
          output=$(awk '/FIN-WAIT-1/{print $2}' $tmp_file)
          if [ "$output" == "" ];then
             echo 0
          else
             echo $output
          fi
         ;;
   finwait2)
          output=$(awk '/FIN-WAIT-2/{print $2}' $tmp_file)
          if [ "$output" == "" ];then
             echo 0
          else
             echo $output
          fi
         ;;
         *)
          echo -e "\e[033mUsage: sh  $0 [closed|closing|closewait|synrecv|synsent|finwait1|finwait2|listen|established|lastack|timewait]\e[0m"
   
esac

