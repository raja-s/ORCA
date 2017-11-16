
# C++ compiler
CXX=g++

# C++ flags
CXXFLAGS=-std=c++11

# Linker libraries
LDLIBS=-lGL -lGLU -lglut -pthread

# Objects
DEMO_OBJECTS=src/demo/color.o src/demo/demo.o
GEOM_OBJECTS=src/geom/halfPlane.o src/geom/line.o src/geom/point.o src/geom/vector.o
ORCA_OBJECTS=src/orca/agent.o src/orca/orca.o
UTILITIES_OBJECTS=src/utilities/exceptions.o
OBJECTS=$(DEMO_OBJECTS) $(GEOM_OBJECTS) $(ORCA_OBJECTS) $(UTILITIES_OBJECTS)

# Clean command
CLEAN=rm -f $(OBJECTS) src/demo/main.o

# Non-file based targets
.PHONY: all demo run debug clean

# Argument-free target
all: demo

# Compile the program
demo: $(OBJECTS) src/demo/main.o
	mkdir -p bin
	$(CXX) $(CXXFLAGS) $(OBJECTS) src/demo/main.o -o bin/demo $(LDLIBS)

# Compile the program, run immediately, then remove the binary when done
run: demo
	$(CLEAN)
	bin/demo
	rm -rf bin

# Compile the program with the "-g" flag and debug with gdb
debug:
	make CXXFLAGS="${CXXFLAGS} -g" demo
	gdb bin/demo

# Clean up object files
clean:
	$(CLEAN)
