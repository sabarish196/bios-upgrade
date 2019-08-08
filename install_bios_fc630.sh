#! /bin/#!/usr/bin/env bash

## script to execute bios fc630

echo "BIOS_GV0FD_LN_2.8.0.BIN--> STARTED"  >> /tmp/status.txt
/tmp/fc630_fwbin_2019/BIOS_GV0FD_LN_2.8.0.BIN -q
if [[ $? -eq 0 ]]; then
  echo "BIOS_GV0FD_LN_2.8.0.BIN--> DONE --> PROCEEDING TO NEX " >> /tmp/status.txt
else
  echo "BIOS_GV0FD_LN_2.8.0.BIN --> FAILED --> EXITING HERE" >> /tmp/status.txt
  exit
fi
sleep 30

echo "Firmware_M2YKM_LN_3.31_A00-00_01.BIN --> STARTED" >> /tmp/status.txt
/tmp/fc630_fwbin_2019/Firmware_M2YKM_LN_3.31_A00-00_01.BIN -q
if [[ $? -eq 0 ]]; then
  echo "Firmware_M2YKM_LN_3.31_A00-00_01.BIN --> DONE --> PROCEEDING TO NEX " >> /tmp/status.txt
else
  echo "Firmware_M2YKM_LN_3.31_A00-00_01.BIN --> FAILED --> EXITING HERE" >> /tmp/status.txt
  exit
fi

sleep 30

echo "iDRAC-with-Lifecycle-Controller_Firmware_CX8N2_LN_2.60.60.60_A00.BIN --> STARTED"  >> /tmp/status.txt
/tmp/fc630_fwbin_2019/iDRAC-with-Lifecycle-Controller_Firmware_CX8N2_LN_2.60.60.60_A00.BIN -q
if [[ $? -eq 0 ]]; then
  echo "iDRAC-with-Lifecycle-Controller_Firmware_CX8N2_LN_2.60.60.60_A00.BIN --> DONE --> PROCEEDING TO NEX " >> /tmp/status.txt
else
  echo "iDRAC-with-Lifecycle-Controller_Firmware_CX8N2_LN_2.60.60.60_A00.BIN --> FAILED --> EXITING HERE" >> /tmp/status.txt
  exit
fi
sleep 30

echo "Network_Firmware_3XJH0_LN_18.5.18_A00.BIN --> STARTED" >> /tmp/status.txt
/tmp/fc630_fwbin_2019/Network_Firmware_3XJH0_LN_18.5.18_A00.BIN -q
if [[ $? -eq 0 ]]; then
  echo "Network_Firmware_3XJH0_LN_18.5.18_A00.BIN --> DONE --> PROCEEDING TO NEX " >> /tmp/status.txt
else
  echo "Network_Firmware_3XJH0_LN_18.5.18_A00.BIN --> FAILED --> EXITING HERE" >> /tmp/status.txt
  exit
fi
sleep 30

echo "SAS-RAID_Firmware_F675Y_LN_25.5.5.0005_A13.BIN --> STARTED" >> /tmp/status.txt
/tmp/fc630_fwbin_2019/SAS-RAID_Firmware_F675Y_LN_25.5.5.0005_A13.BIN -q
if [[ $? -eq 0 ]]; then
  echo "SAS-RAID_Firmware_F675Y_LN_25.5.5.0005_A13.BIN --> DONE --> PROCEEDING TO NEX " >> /tmp/status.txt
else
  echo "SAS-RAID_Firmware_F675Y_LN_25.5.5.0005_A13.BIN --> FAILED --> EXITING HERE" >> /tmp/status.txt
  exit
fi
sleep 30

echo "BIOS UPGRADDED" > /tmp/status.txt
