nonetwork.so: nonetwork.c
	gcc -shared -fPIC -o $@ $<

test: nonetwork.so
	(! LD_PRELOAD=./nonetwork.so wget http://ip4.me)
	(! LD_PRELOAD=./nonetwork.so curl http://ip4.me)
	(! LD_PRELOAD=./nonetwork.so ssh 8.8.8.8 22)
