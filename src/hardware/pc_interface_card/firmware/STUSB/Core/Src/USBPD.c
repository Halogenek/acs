#include "USBPD.h"
#include "USBPD_NVM.h"

uint8_t CUST_EnterWriteMode(uint8_t DevAddr,unsigned char ErasedSector)
{
	unsigned char Buffer[10];

	/* Set Password*/
	Buffer[0] = USBPD_FTP_CUST_PASSWORD;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CUST_PASSWORD_REG,Buffer,1) != HAL_OK ) return 1;

	/* this register must be NULL for Partial Erase feature */
	Buffer[0] = 0;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_RW_BUFFER,Buffer,1) != HAL_OK ) return 1;

	/* Set RST_N bit */
	Buffer[0] = USBPD_FTP_CUST_RST_N ;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,1) != HAL_OK ) return 1;

	/* Reset NVM */
	Buffer[0] = 0;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,1) != HAL_OK ) return 1;

	/* Set RST_N bit */
	Buffer[0] = USBPD_FTP_CUST_RST_N;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,1) != HAL_OK ) return 1;

	/* Load 0xF1 to FTP_CUST_SER to erase all sectors of FTP and Set Write SER Opcode */
	Buffer[0] = ((ErasedSector << 3) & USBPD_FTP_CUST_SER) | ( USBPD_WRITE_SER & USBPD_FTP_CUST_OPCODE);
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_1,Buffer,1) != HAL_OK ) return 1;

	/* Load Write SER Opcode */
	Buffer[0] = USBPD_FTP_CUST_RST_N | USBPD_FTP_CUST_REQ ;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,1) != HAL_OK ) return 1;

	/* Wait for execution */
	do {
		if ( I2C_Read_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,1) != HAL_OK ) return 1;
	} while(Buffer[0] & USBPD_FTP_CUST_REQ);

	/* Set Soft Prog Opcode */
	Buffer[0] = USBPD_SOFT_PROG_SECTOR & USBPD_FTP_CUST_OPCODE ;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_1,Buffer,1) != HAL_OK ) return 1;

	/* Load Soft Prog Opcode */
	Buffer[0] = USBPD_FTP_CUST_RST_N | USBPD_FTP_CUST_REQ ;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,1) != HAL_OK ) return 1;
	/* Wait for execution */
	do {
		if ( I2C_Read_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,1) != HAL_OK ) return 1;
	} while(Buffer[0] & USBPD_FTP_CUST_REQ);

	/* Set Erase Sectors Opcode */
	Buffer[0] = USBPD_ERASE_SECTOR & USBPD_FTP_CUST_OPCODE ;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_1,Buffer,1) != HAL_OK ) return 1;

	/* Load Erase Sectors Opcode */
	Buffer[0] = USBPD_FTP_CUST_RST_N | USBPD_FTP_CUST_REQ ;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,1) != HAL_OK ) return 1;
	/* Wait for execution */
	do {
		if ( I2C_Read_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,1) != HAL_OK ) return 1;
	} while(Buffer[0] & USBPD_FTP_CUST_REQ);
	return 0;
}

uint8_t CUST_WriteSector(uint8_t DevAddr,char SectorNum, unsigned char *SectorData)
{
	unsigned char Buffer[10];

	/* Write Sectors Data in RW-BUFFER @ 0x53 */
	I2C_Write_USB_PD(DevAddr,USBPD_RW_BUFFER,SectorData,8);

	/*Set Write to PL Opcode*/
	Buffer[0]= (USBPD_WRITE_PL & USBPD_FTP_CUST_OPCODE);
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_1,Buffer,1) != HAL_OK ) return 1;

	/* Load Write to PL Sectors Opcode */
	Buffer[0]= USBPD_FTP_CUST_RST_N | USBPD_FTP_CUST_REQ;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,1) != HAL_OK ) return 1;

	/* Wait for execution */
	do {
		if ( I2C_Read_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,1) != HAL_OK ) return 1;
	} while(Buffer[0] & USBPD_FTP_CUST_REQ);

	/*Set Prog Sectors Opcode*/
	Buffer[0]= (USBPD_PROG_SECTOR & USBPD_FTP_CUST_OPCODE);
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_1,Buffer,1) != HAL_OK ) return 1;

	/* Load Prog Sectors Opcode */
	Buffer[0]=(SectorNum & USBPD_FTP_CUST_SECT) | USBPD_FTP_CUST_RST_N | USBPD_FTP_CUST_REQ;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,1) != HAL_OK ) return 1;

	/* Wait for execution */
	do {
		if ( I2C_Read_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,1) != HAL_OK ) return 1;
	} while(Buffer[0] & USBPD_FTP_CUST_REQ) ;
	return 0;
}

uint8_t CUST_ExitTestMode(uint8_t DevAddr)
{
	unsigned char Buffer[10];

	/* clear registers */
	Buffer[0] = USBPD_FTP_CUST_RST_N; Buffer[1]=0x00;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CTRL_0,Buffer,2) != HAL_OK ) return 1;

	/* Clear Password */
	Buffer[0] = 0x00;
	if ( I2C_Write_USB_PD(DevAddr,USBPD_FTP_CUST_PASSWORD_REG,Buffer,1) != HAL_OK ) return 1;

	return 0 ;
}

uint8_t nvm_flash(uint8_t DevAddr)
{
	if (CUST_EnterWriteMode(DevAddr, USBPD_SECTOR_0 |USBPD_SECTOR_1 |USBPD_SECTOR_2 |USBPD_SECTOR_3 | USBPD_SECTOR_4 ) != 0 ) return 1;

	if (CUST_WriteSector(DevAddr, 0, Sector0) != 0) return 1;
	if (CUST_WriteSector(DevAddr, 1, Sector1) != 0) return 1;
	if (CUST_WriteSector(DevAddr, 2, Sector2) != 0) return 1;
	if (CUST_WriteSector(DevAddr, 3, Sector3) != 0) return 1;
	if (CUST_WriteSector(DevAddr, 4, Sector4) != 0) return 1;

	if (CUST_ExitTestMode(DevAddr) != 0 ) return 1;

	return 0;
}

