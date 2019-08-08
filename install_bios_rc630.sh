#! /bin/#!/usr/bin/env bash

## script to execute bios r630
/tmp/r630_fwbin_2019/BIOS_2JFRF_LN_2.8.0.BIN -q
if [[ $? -eq 0 ]]; then
  echo "BIOS_2JFRF_LN_2.8.0.BIN--> DONE --> PROCEEDING TO NEX " >> /tmp/status.txt
else
  echo "BIOS_2JFRF_LN_2.8.0.BIN --> FAILED --> EXITING HERE" >> /tmp/status.txt
  exit
fi
sleep 30
/tmp/r630_fwbin_2019/Firmware_HYPYY_LN_3.35_A00-00.BIN -q
if [[ $? -eq 0 ]]; then
  echo "Firmware_HYPYY_LN_3.35_A00-00.BIN--> DONE --> PROCEEDING TO NEX " >> /tmp/status.txt
else
  echo "Firmware_HYPYY_LN_3.35_A00-00.BIN --> FAILED --> EXITING HERE" >> /tmp/status.txt
  exit
fi
sleep 30
/tmp/r630_fwbin_2019/iDRAC-with-Lifecycle-Controller_Firmware_CX8N2_LN_2.60.60.60_A00.BIN -q
if [[ $? -eq 0 ]]; then
  echo "iDRAC-with-Lifecycle-Controller_Firmware_CX8N2_LN_2.60.60.60_A00.BIN --> DONE --> PROCEEDING TO NEX " >> /tmp/status.txt
else
  echo "iDRAC-with-Lifecycle-Controller_Firmware_CX8N2_LN_2.60.60.60_A00.BIN --> FAILED --> EXITING HERE" >> /tmp/status.txt
  exit
fi
sleep 30
/tmp/r630_fwbin_2019/Network_Firmware_3XJH0_LN_18.5.18_A00.BIN -q
if [[ $? -eq 0 ]]; then
  echo "Network_Firmware_3XJH0_LN_18.5.18_A00.BIN --> DONE --> PROCEEDING TO NEX " >> /tmp/status.txt
else
  echo "Network_Firmware_3XJH0_LN_18.5.18_A00.BIN --> FAILED --> EXITING HERE" >> /tmp/status.txt
  exit
fi
sleep 30
/tmp/r630_fwbin_2019/SAS-RAID_Firmware_F675Y_LN_25.5.5.0005_A13.BIN -q
if [[ $? -eq 0 ]]; then
  echo "SAS-RAID_Firmware_F675Y_LN_25.5.5.0005_A13.BIN --> DONE --> PROCEEDING TO NEX " >> /tmp/status.txt
else
  echo "SAS-RAID_Firmware_F675Y_LN_25.5.5.0005_A13.BIN --> FAILED --> EXITING HERE" >> /tmp/status.txt
  exit
fi

echo "BIOS UPGRADDED" > /tmp/status.txt
