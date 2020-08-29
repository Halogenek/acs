#include <stdint.h>
#include "main.h"

/*Devices address */
#define USBPD_ADDR_0				0x28
#define USBPD_ADDR_1				0x2A

/*NVM FLasher Registers Definition */
#define USBPD_ADDR_SIZE				0x01
#define USBPD_FTP_CUST_PASSWORD_REG	0x95
#define USBPD_FTP_CUST_PASSWORD		0x47
#define USBPD_FTP_CTRL_0            0x96
#define USBPD_FTP_CUST_PWR			0x80
#define USBPD_FTP_CUST_RST_N		0x40
#define USBPD_FTP_CUST_REQ			0x10
#define USBPD_FTP_CUST_SECT			0x07
#define USBPD_FTP_CTRL_1			0x97
#define USBPD_FTP_CUST_SER			0xF8
#define USBPD_FTP_CUST_OPCODE		0x07
#define USBPD_RW_BUFFER				0x53

/*"000" then No Operation
"001" then Read 
"010" and FTP_ADR[2:0]="000" then Shift-In Write Bit Data (0x20-0x28). (to be done before Programming)
"010" and FTP_ADR[2:0]="001" then Shift-In Erase Sector Data (0x20). (to be done before Erasing)
"011" and FTP_ADR[2:0]="000" then Shift-Out Read Bit Data (0x20-0x28). (to be done after Reading) 
"011" and FTP_ADR[2:0]="001" then Shift-Out Erase Sector Data (0x20). (to be done after Erasing) 
"100" then Verify (to be done after Programming)
"101" then Erase
"110" then Program
"111" then Soft Programming (to be done after Erasing)*/
#define USBPD_READ					0x00
#define USBPD_WRITE_PL				0x01
#define USBPD_WRITE_SER				0x02
#define USBPD_READ_PL				0x03
#define USBPD_READ_SER				0x04
#define USBPD_ERASE_SECTOR			0x05
#define USBPD_PROG_SECTOR			0x06
#define USBPD_SOFT_PROG_SECTOR		0x07
#define	USBPD_SECTOR_0				0x01
#define	USBPD_SECTOR_1				0x02
#define	USBPD_SECTOR_2				0x04
#define	USBPD_SECTOR_3				0x08
#define	USBPD_SECTOR_4				0x10

uint8_t CUST_EnterWriteMode(uint8_t DevAddr,unsigned char ErasedSector);
uint8_t CUST_WriteSector(uint8_t DevAddr,char SectorNum, unsigned char *SectorData);
uint8_t CUST_ExitTestMode(uint8_t DevAddr);
uint8_t nvm_flash(uint8_t Port);

