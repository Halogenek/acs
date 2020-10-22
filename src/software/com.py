#!/usr/bin/python

# TODO
# implement command line arguments for directly interfacing with cards form the shell
# implement serial communication
# list serial ports
# open them and send an ACK packet
# implement functions for discovering cards, sending packets

import serial.tools.list_ports

FTDI_IC_VID_PID = "0403:6015"  # TODO change to (?) custom VID:PID


# TODO: ContextManager + Threading
class SerialMediator:
    """
    Main Mediator responsibilities:
      - open connection,
      - close connection with care,
      - read from serial,
      - react on loosing connection,
      - etc..

        LOGIC MOVED TO MEDIATOR
            for comport in serial.tools.list_ports.comports():
                if FTDI_IC_VID_PID in comport.hwid:
                    self.serialPort = comport.device
            if self.serialPort == '':
                raise ConnectionError("ACS: No PC interface card detected")
            print(self.serialPort)

    """

    def __init__(self, vid_pid: str):
        # vid_pid dependency - injection
        pass


# TODO: Make use of dependencies injected from SerialMediator
class AcsCom:
    """
    Use Mediator for  clearer picture + dependencies separation.

    AcsCom responsibilities:
      - resolving incoming data,
      - ...
    """

    def __init__(self, serial_mediator: SerialMediator):
        pass


test = AcsCom()
