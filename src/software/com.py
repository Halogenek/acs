#!/usr/bin/python

# TODO
# implement command line arguments for directly interfacing with cards form the shell
# implement serial communication
# list serial ports
# open them and send an ACK packet
# implement functions for discovering cards, sending packets

import serial.tools.list_ports

FTDI_IC_VID_PID = "0403:6015"  # TODO change to (?) custom VID:PID


class AcsCom:
    """Serial interface (basic) communication class"""
    serialPort = ''

    def __init__(self):
        for comport in serial.tools.list_ports.comports():
            if FTDI_IC_VID_PID in comport.hwid:
                self.serialPort = comport.device
        if self.serialPort == '':
            raise ConnectionError("ACS: No PC interface card detected")
        print(self.serialPort)


test = AcsCom()
