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
include src/CMakeFiles/physicalplan.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/physicalplan.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/physicalplan.dir/flags.make

src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_join_nest_loop.c.obj: src/CMakeFiles/physicalplan.dir/flags.make
src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_join_nest_loop.c.obj: src/CMakeFiles/physicalplan.dir/includes_C.rsp
src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_join_nest_loop.c.obj: ../src/physicalplan/physical_scan_join_nest_loop.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\db_4\DongmenDB-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_join_nest_loop.c.obj"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\physicalplan.dir\physicalplan\physical_scan_join_nest_loop.c.obj   -c G:\db_4\DongmenDB-master\src\physicalplan\physical_scan_join_nest_loop.c

src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_join_nest_loop.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/physicalplan.dir/physicalplan/physical_scan_join_nest_loop.c.i"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\db_4\DongmenDB-master\src\physicalplan\physical_scan_join_nest_loop.c > CMakeFiles\physicalplan.dir\physicalplan\physical_scan_join_nest_loop.c.i

src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_join_nest_loop.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/physicalplan.dir/physicalplan/physical_scan_join_nest_loop.c.s"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\db_4\DongmenDB-master\src\physicalplan\physical_scan_join_nest_loop.c -o CMakeFiles\physicalplan.dir\physicalplan\physical_scan_join_nest_loop.c.s

src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_project.c.obj: src/CMakeFiles/physicalplan.dir/flags.make
src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_project.c.obj: src/CMakeFiles/physicalplan.dir/includes_C.rsp
src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_project.c.obj: ../src/physicalplan/physical_scan_project.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\db_4\DongmenDB-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_project.c.obj"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\physicalplan.dir\physicalplan\physical_scan_project.c.obj   -c G:\db_4\DongmenDB-master\src\physicalplan\physical_scan_project.c

src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_project.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/physicalplan.dir/physicalplan/physical_scan_project.c.i"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\db_4\DongmenDB-master\src\physicalplan\physical_scan_project.c > CMakeFiles\physicalplan.dir\physicalplan\physical_scan_project.c.i

src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_project.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/physicalplan.dir/physicalplan/physical_scan_project.c.s"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\db_4\DongmenDB-master\src\physicalplan\physical_scan_project.c -o CMakeFiles\physicalplan.dir\physicalplan\physical_scan_project.c.s

src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_select.c.obj: src/CMakeFiles/physicalplan.dir/flags.make
src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_select.c.obj: src/CMakeFiles/physicalplan.dir/includes_C.rsp
src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_select.c.obj: ../src/physicalplan/physical_scan_select.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\db_4\DongmenDB-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_select.c.obj"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\physicalplan.dir\physicalplan\physical_scan_select.c.obj   -c G:\db_4\DongmenDB-master\src\physicalplan\physical_scan_select.c

src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_select.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/physicalplan.dir/physicalplan/physical_scan_select.c.i"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\db_4\DongmenDB-master\src\physicalplan\physical_scan_select.c > CMakeFiles\physicalplan.dir\physicalplan\physical_scan_select.c.i

src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_select.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/physicalplan.dir/physicalplan/physical_scan_select.c.s"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\db_4\DongmenDB-master\src\physicalplan\physical_scan_select.c -o CMakeFiles\physicalplan.dir\physicalplan\physical_scan_select.c.s

src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_table.c.obj: src/CMakeFiles/physicalplan.dir/flags.make
src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_table.c.obj: src/CMakeFiles/physicalplan.dir/includes_C.rsp
src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_table.c.obj: ../src/physicalplan/physical_scan_table.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\db_4\DongmenDB-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_table.c.obj"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\physicalplan.dir\physicalplan\physical_scan_table.c.obj   -c G:\db_4\DongmenDB-master\src\physicalplan\physical_scan_table.c

src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_table.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/physicalplan.dir/physicalplan/physical_scan_table.c.i"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\db_4\DongmenDB-master\src\physicalplan\physical_scan_table.c > CMakeFiles\physicalplan.dir\physicalplan\physical_scan_table.c.i

src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_table.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/physicalplan.dir/physicalplan/physical_scan_table.c.s"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\db_4\DongmenDB-master\src\physicalplan\physical_scan_table.c -o CMakeFiles\physicalplan.dir\physicalplan\physical_scan_table.c.s

src/CMakeFiles/physicalplan.dir/physicalplan/physicalplan.c.obj: src/CMakeFiles/physicalplan.dir/flags.make
src/CMakeFiles/physicalplan.dir/physicalplan/physicalplan.c.obj: src/CMakeFiles/physicalplan.dir/includes_C.rsp
src/CMakeFiles/physicalplan.dir/physicalplan/physicalplan.c.obj: ../src/physicalplan/physicalplan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\db_4\DongmenDB-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/CMakeFiles/physicalplan.dir/physicalplan/physicalplan.c.obj"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\physicalplan.dir\physicalplan\physicalplan.c.obj   -c G:\db_4\DongmenDB-master\src\physicalplan\physicalplan.c

src/CMakeFiles/physicalplan.dir/physicalplan/physicalplan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/physicalplan.dir/physicalplan/physicalplan.c.i"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\db_4\DongmenDB-master\src\physicalplan\physicalplan.c > CMakeFiles\physicalplan.dir\physicalplan\physicalplan.c.i

src/CMakeFiles/physicalplan.dir/physicalplan/physicalplan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/physicalplan.dir/physicalplan/physicalplan.c.s"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\db_4\DongmenDB-master\src\physicalplan\physicalplan.c -o CMakeFiles\physicalplan.dir\physicalplan\physicalplan.c.s

src/CMakeFiles/physicalplan.dir/physicalplan/physicalscan.c.obj: src/CMakeFiles/physicalplan.dir/flags.make
src/CMakeFiles/physicalplan.dir/physicalplan/physicalscan.c.obj: src/CMakeFiles/physicalplan.dir/includes_C.rsp
src/CMakeFiles/physicalplan.dir/physicalplan/physicalscan.c.obj: ../src/physicalplan/physicalscan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\db_4\DongmenDB-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object src/CMakeFiles/physicalplan.dir/physicalplan/physicalscan.c.obj"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\physicalplan.dir\physicalplan\physicalscan.c.obj   -c G:\db_4\DongmenDB-master\src\physicalplan\physicalscan.c

src/CMakeFiles/physicalplan.dir/physicalplan/physicalscan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/physicalplan.dir/physicalplan/physicalscan.c.i"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\db_4\DongmenDB-master\src\physicalplan\physicalscan.c > CMakeFiles\physicalplan.dir\physicalplan\physicalscan.c.i

src/CMakeFiles/physicalplan.dir/physicalplan/physicalscan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/physicalplan.dir/physicalplan/physicalscan.c.s"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && E:\coldblocks\CodeBlocks\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\db_4\DongmenDB-master\src\physicalplan\physicalscan.c -o CMakeFiles\physicalplan.dir\physicalplan\physicalscan.c.s

# Object files for target physicalplan
physicalplan_OBJECTS = \
"CMakeFiles/physicalplan.dir/physicalplan/physical_scan_join_nest_loop.c.obj" \
"CMakeFiles/physicalplan.dir/physicalplan/physical_scan_project.c.obj" \
"CMakeFiles/physicalplan.dir/physicalplan/physical_scan_select.c.obj" \
"CMakeFiles/physicalplan.dir/physicalplan/physical_scan_table.c.obj" \
"CMakeFiles/physicalplan.dir/physicalplan/physicalplan.c.obj" \
"CMakeFiles/physicalplan.dir/physicalplan/physicalscan.c.obj"

# External object files for target physicalplan
physicalplan_EXTERNAL_OBJECTS =

../lib/libphysicalpland.a: src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_join_nest_loop.c.obj
../lib/libphysicalpland.a: src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_project.c.obj
../lib/libphysicalpland.a: src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_select.c.obj
../lib/libphysicalpland.a: src/CMakeFiles/physicalplan.dir/physicalplan/physical_scan_table.c.obj
../lib/libphysicalpland.a: src/CMakeFiles/physicalplan.dir/physicalplan/physicalplan.c.obj
../lib/libphysicalpland.a: src/CMakeFiles/physicalplan.dir/physicalplan/physicalscan.c.obj
../lib/libphysicalpland.a: src/CMakeFiles/physicalplan.dir/build.make
../lib/libphysicalpland.a: src/CMakeFiles/physicalplan.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=G:\db_4\DongmenDB-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C static library ..\..\lib\libphysicalpland.a"
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && $(CMAKE_COMMAND) -P CMakeFiles\physicalplan.dir\cmake_clean_target.cmake
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\physicalplan.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/physicalplan.dir/build: ../lib/libphysicalpland.a

.PHONY : src/CMakeFiles/physicalplan.dir/build

src/CMakeFiles/physicalplan.dir/clean:
	cd /d G:\db_4\DongmenDB-master\cmake-build-debug\src && $(CMAKE_COMMAND) -P CMakeFiles\physicalplan.dir\cmake_clean.cmake
.PHONY : src/CMakeFiles/physicalplan.dir/clean

src/CMakeFiles/physicalplan.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" G:\db_4\DongmenDB-master G:\db_4\DongmenDB-master\src G:\db_4\DongmenDB-master\cmake-build-debug G:\db_4\DongmenDB-master\cmake-build-debug\src G:\db_4\DongmenDB-master\cmake-build-debug\src\CMakeFiles\physicalplan.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/physicalplan.dir/depend

