cc=g++
dst=client
header=$(shell find ./ -iname "*.h" )
src=$(shell find ./ -iname "*.cpp" )
objs=$(src:%.cpp=%.o)


bulid : epoll_client.cpp utility.h
		$(cc) -o client.out epoll_client.cpp
		$(cc) -o server.out epoll_server.cpp

clean:
		rm -f *.out
