# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/blei/learn-socket

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/blei/learn-socket/build

# Include any dependencies generated for this target.
include CMakeFiles/cli_udp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cli_udp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cli_udp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cli_udp.dir/flags.make

CMakeFiles/cli_udp.dir/cli_dgram.cpp.o: CMakeFiles/cli_udp.dir/flags.make
CMakeFiles/cli_udp.dir/cli_dgram.cpp.o: ../cli_dgram.cpp
CMakeFiles/cli_udp.dir/cli_dgram.cpp.o: CMakeFiles/cli_udp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/blei/learn-socket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cli_udp.dir/cli_dgram.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cli_udp.dir/cli_dgram.cpp.o -MF CMakeFiles/cli_udp.dir/cli_dgram.cpp.o.d -o CMakeFiles/cli_udp.dir/cli_dgram.cpp.o -c /home/blei/learn-socket/cli_dgram.cpp

CMakeFiles/cli_udp.dir/cli_dgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cli_udp.dir/cli_dgram.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/blei/learn-socket/cli_dgram.cpp > CMakeFiles/cli_udp.dir/cli_dgram.cpp.i

CMakeFiles/cli_udp.dir/cli_dgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cli_udp.dir/cli_dgram.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/blei/learn-socket/cli_dgram.cpp -o CMakeFiles/cli_udp.dir/cli_dgram.cpp.s

# Object files for target cli_udp
cli_udp_OBJECTS = \
"CMakeFiles/cli_udp.dir/cli_dgram.cpp.o"

# External object files for target cli_udp
cli_udp_EXTERNAL_OBJECTS =

cli_udp: CMakeFiles/cli_udp.dir/cli_dgram.cpp.o
cli_udp: CMakeFiles/cli_udp.dir/build.make
cli_udp: CMakeFiles/cli_udp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/blei/learn-socket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cli_udp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cli_udp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cli_udp.dir/build: cli_udp
.PHONY : CMakeFiles/cli_udp.dir/build

CMakeFiles/cli_udp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cli_udp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cli_udp.dir/clean

CMakeFiles/cli_udp.dir/depend:
	cd /home/blei/learn-socket/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/blei/learn-socket /home/blei/learn-socket /home/blei/learn-socket/build /home/blei/learn-socket/build /home/blei/learn-socket/build/CMakeFiles/cli_udp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cli_udp.dir/depend

