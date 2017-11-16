
# C++ compiler
CXX=g++

# C++ flags
CXXFLAGS=-std=c++11

# Linker libraries
LDLIBS=-lGL -lGLU -lglut -pthread

# Objects
DEMO_OBJECTS=src/demo/color.o src/demo/demo.o src/demo/main.o
GEOM_OBJECTS=src/geom/halfPlane.o src/geom/line.o src/geom/point.o src/geom/vector.o
ORCA_OBJECTS=src/orca/agent.o src/orca/orca.o
UTILITIES_OBJECTS=src/utilities/exceptions.o
OBJECTS=$(DEMO_OBJECTS) $(GEOM_OBJECTS) $(ORCA_OBJECTS) $(UTILITIES_OBJECTS)

# Binaries
BINARIES_PATH=bin
BINARY=demo

# Clean commands
CLEAN_OBJECTS=rm -f $(OBJECTS) 
CLEAN_BINARIES=rm -rf $(BINARIES_PATH)

# Non-file based targets
.PHONY: all demo run debug clean cleanobj cleanbin

# Argument-free target
all: demo

# Compile the program
demo: $(OBJECTS)
	mkdir -p $(BINARIES_PATH)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $(BINARIES_PATH)/$(BINARY) $(LDLIBS)

# Compile the program, run it, then immediately remove the binary
run: demo
	$(CLEAN_OBJECTS)
	$(BINARIES_PATH)/$(BINARY)
	$(CLEAN_BINARIES)

# Compile the program with the "-g" flag and debug with gdb
debug:
	make CXXFLAGS="${CXXFLAGS} -g" demo
	gdb $(BINARIES_PATH)/$(BINARY)

# Clean up everything
clean: cleanobj cleanbin

# Clean up object files
cleanobj:
	$(CLEAN_OBJECTS)

# Clean up binary files
cleanbin:
	$(CLEAN_BINARIES)
