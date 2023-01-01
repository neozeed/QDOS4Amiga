AS=a68k

OBJDIR=obj
OBJ = $(OBJDIR)\ace.o   $(OBJDIR)\flp.o   $(OBJDIR)\jan.o   $(OBJDIR)\kbd.o \
	  $(OBJDIR)\keyuk.o   $(OBJDIR)\main.o    $(OBJDIR)\mdv.o   $(OBJDIR)\par.o  \
	  $(OBJDIR)\ser.o   $(OBJDIR)\snd.o	$(OBJDIR)\sys.o   $(OBJDIR)\vdu.o

default:	$(OBJ)

obj\ace.o:
	$(AS) ACE\ACE_ASM -iace -oobj\ace.o
#	wsl dd if=obj/ace.o of=rom/ace.rom bs=28 skip=1

obj\clk.o:
	$(AS) CLK\CLK_asm -iclk -oobj\clk.o

obj\flp.o:
	$(AS) FLP\FLP_asm -iflp -i. -oobj\flp.o

obj\jan.o:
	$(AS) JAN\JAN_asm -ijan -i. -oobj\jan.o

obj\kbd.o:
	$(AS) KBD\KBD_asm -ikbd -i. -oobj\kbd.o

obj\keyuk.o:
	$(AS) KEYUK\KEYUK_asm -ikeyuk -i. -oobj\keyuk.o

obj\main.o:
	$(AS) MAIN\MAIN_asm -imain -i. -oobj\main.o

obj\mdv.o:
	$(AS) MDV\MDV_asm -imdv -i. -oobj\mdv.o

obj\par.o:
	$(AS) PAR\PAR_asm -ipar -i. -oobj\par.o

obj\ser.o:
	$(AS) SER\SER_asm -iser -i. -oobj\ser.o

obj\snd.o:
	$(AS) SND\SND_asm -isnd -i. -oobj\snd.o

obj\sys.o:
	$(AS) SYS\SYS_asm -isys -i. -oobj\sys.o  -n -p32767 -t

obj\vdu.o:
	$(AS) VDU\VDU_asm -ivdu -i. -oobj\vdu.o

clean:
	del $(OBJ)