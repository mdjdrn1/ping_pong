#OBJS specifies which files to compile as part of the project 
OBJS = GameWindow.hpp GameWindow.cpp Racket.hpp Racket.cpp Ball.hpp Ball.cpp Scoreboard.hpp Scoreboard.cpp Text.hpp Text.cpp Error.hpp Error.cpp main.cpp 

#CC specifies which compiler we're using 
CC = g++

#COMPILER_FLAGS specifies the additional compilation options we're using 
COMPILER_FLAGS = -g -pedantic

#LINKER_FLAGS specifies the libraries we're linking against 
LINKER_FLAGS = -lSDL2 -lSDL2_ttf -std=c++1y

#OBJ_NAME specifies the name of our exectuable 
OBJ_NAME = pong 

#This is the target that compiles our executable 
all : $(OBJS)
		$(CC) $(OBJS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(OBJ_NAME)