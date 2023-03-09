FILE=1.asm
LST= 1.lst
OBJ= 1.o
NAME=1

objs:
	nasm -f elf $(FILE) -l $(LST)

all: objs
	ld -m elf_i386 $(OBJ) -o $(NAME)

fclean:
	rm $(LST) $(OBJ) $(NAME)

re: fclean all

objs_delete:
	find . -type f -name '*.lst' -exec rm {} +
	find . -type f -name '*.o' -exec rm {} +
executables_delete:
	find . -type f -executable -exec rm {} +

delete: objs_delete executables_delete