# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\clion\CLion 2018.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\clion\CLion 2018.2.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = G:\db_4\DongmenDB-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = G:\db_4\DongmenDB-master\cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/utils.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/utils.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/utils.dir/flags.make

src/CMakeFiles/utils.dir/utils/arraylist.c.obj: src/CMakeFiles/utils.dir/flags.make
src/CMakeFiles/utils.dir/utils/arraylist.c.obj: src/CMakeFiles/utils.dir/includes_C.rsp
src/CMakeFiles/utils.dir/utils/arraylist.c.obj: ../src/utils/arraylist.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\db_4\DongmenDB-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/utils.dir/utils/arraylist.c.obj"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\utils.dir\utils\arraylist.c.obj   -c G:\db_4\DongmenDB-master\src\utils\arraylist.c

src/CMakeFiles/utils.dir/utils/arraylist.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/utils.dir/utils/arraylist.c.i"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\db_4\DongmenDB-master\src\utils\arraylist.c > CMakeFiles\utils.dir\utils\arraylist.c.i

src/CMakeFiles/utils.dir/utils/arraylist.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/utils.dir/utils/arraylist.c.s"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\db_4\DongmenDB-master\src\utils\arraylist.c -o CMakeFiles\utils.dir\utils\arraylist.c.s

src/CMakeFiles/utils.dir/utils/hashmap.c.obj: src/CMakeFiles/utils.dir/flags.make
src/CMakeFiles/utils.dir/utils/hashmap.c.obj: src/CMakeFiles/utils.dir/includes_C.rsp
src/CMakeFiles/utils.dir/utils/hashmap.c.obj: ../src/utils/hashmap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\db_4\DongmenDB-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/utils.dir/utils/hashmap.c.obj"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\utils.dir\utils\hashmap.c.obj   -c G:\db_4\DongmenDB-master\src\utils\hashmap.c

src/CMakeFiles/utils.dir/utils/hashmap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/utils.dir/utils/hashmap.c.i"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\db_4\DongmenDB-master\src\utils\hashmap.c > CMakeFiles\utils.dir\utils\hashmap.c.i

src/CMakeFiles/utils.dir/utils/hashmap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/utils.dir/utils/hashmap.c.s"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\db_4\DongmenDB-master\src\utils\hashmap.c -o CMakeFiles\utils.dir\utils\hashmap.c.s

src/CMakeFiles/utils.dir/utils/opstack.c.obj: src/CMakeFiles/utils.dir/flags.make
src/CMakeFiles/utils.dir/utils/opstack.c.obj: src/CMakeFiles/utils.dir/includes_C.rsp
src/CMakeFiles/utils.dir/utils/opstack.c.obj: ../src/utils/opstack.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\db_4\DongmenDB-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/utils.dir/utils/opstack.c.obj"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\utils.dir\utils\opstack.c.obj   -c G:\db_4\DongmenDB-master\src\utils\opstack.c

src/CMakeFiles/utils.dir/utils/opstack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/utils.dir/utils/opstack.c.i"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\db_4\DongmenDB-master\src\utils\opstack.c > CMakeFiles\utils.dir\utils\opstack.c.i

src/CMakeFiles/utils.dir/utils/opstack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/utils.dir/utils/opstack.c.s"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\db_4\DongmenDB-master\src\utils\opstack.c -o CMakeFiles\utils.dir\utils\opstack.c.s

src/CMakeFiles/utils.dir/utils/utils.c.obj: src/CMakeFiles/utils.dir/flags.make
src/CMakeFiles/utils.dir/utils/utils.c.obj: src/CMakeFiles/utils.dir/includes_C.rsp
src/CMakeFiles/utils.dir/utils/utils.c.obj: ../src/utils/utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\db_4\DongmenDB-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/CMakeFiles/utils.dir/utils/utils.c.obj"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\utils.dir\utils\utils.c.obj   -c G:\db_4\DongmenDB-master\src\utils\utils.c

src/CMakeFiles/utils.dir/utils/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/utils.dir/utils/utils.c.i"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\db_4\DongmenDB-master\src\utils\utils.c > CMakeFiles\utils.dir\utils\utils.c.i

src/CMakeFiles/utils.dir/utils/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/utils.dir/utils/utils.c.s"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\db_4\DongmenDB-master\src\utils\utils.c -o CMakeFiles\utils.dir\utils\utils.c.s

# Object files for target utils
utils_OBJECTS = \
"CMakeFiles/utils.dir/utils/arraylist.c.obj" \
"CMakeFiles/utils.dir/utils/hashmap.c.obj" \
"CMakeFiles/utils.dir/utils/opstack.c.obj" \
"CMakeFiles/utils.dir/utils/utils.c.obj"

# External object files for target utils
utils_EXTERNAL_OBJECTS =

../lib/libutilsd.a: src/CMakeFiles/utils.dir/utils/arraylist.c.obj
../lib/libutilsd.a: src/CMakeFiles/utils.dir/utils/hashmap.c.obj
../lib/libutilsd.a: src/CMakeFiles/utils.dir/utils/opstack.c.obj
../lib/libutilsd.a: src/CMakeFiles/utils.dir/utils/utils.c.obj
../lib/libutilsd.a: src/CMakeFiles/utils.dir/build.make
../lib/libutilsd.a: src/CMakeFiles/utils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=G:\db_4\DongmenDB-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library ..\..\lib\libutilsd.a"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && $(CMAKE_COMMAND) -P CMakeFiles\utils.dir\cmake_clean_target.cmake
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\utils.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/utils.dir/build: ../lib/libutilsd.a

.PHONY : src/CMakeFiles/utils.dir/build

src/CMakeFiles/utils.dir/clean:
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && $(CMAKE_COMMAND) -P CMakeFiles\utils.dir\cmake_clean.cmake
.PHONY : src/CMakeFiles/utils.dir/clean

src/CMakeFiles/utils.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" G:\db_4\DongmenDB-master G:\db_4\DongmenDB-master\src G:\db_4\DongmenDB-master\cmake-build-debug G:\db_4\DongmenDB-master\cmake-build-debug\src G:\db_4\DongmenDB-master\cmake-build-debug\src\CMakeFiles\utils.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/utils.dir/depend

