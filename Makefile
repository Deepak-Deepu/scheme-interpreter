objects = hash.o interpret.o lexer.o _memory.o \
	parser.o _queue.o _bignum.o _sys_func.o util.o

edit : $(objects)
	cc -o edit $(objects) 

hash.o : hash.h
interpret.o : lexer.h globals.h parser.h _memory.h interpret.h _queue.h
lexer.o : globals.h lexer.h util.h
_memory.o : _memory.h
parser.o : _memory.h parser.h globals.h lexer.h
_queue.o : _memory.h parser.h _queue.h
_bignum.o : _bignum.h _memory.h
_sys_func.o : _bignum.h interpret.h _memory.h parser.h
util.o : util.h globals.h


.PHONY : clean
clean :
	rm edit $(objects)
           
           
           


