# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build

# Include any dependencies generated for this target.
include PENF/CMakeFiles/PENF.dir/depend.make

# Include the progress variables for this target.
include PENF/CMakeFiles/PENF.dir/progress.make

# Include the compile flags for this target's objects.
include PENF/CMakeFiles/PENF.dir/flags.make

PENF/CMakeFiles/PENF.dir/penf.F90.o: PENF/CMakeFiles/PENF.dir/flags.make
PENF/CMakeFiles/PENF.dir/penf.F90.o: ../PENF/penf.F90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object PENF/CMakeFiles/PENF.dir/penf.F90.o"
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && /Users/rbc-laptop/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/PENF/penf.F90 -o CMakeFiles/PENF.dir/penf.F90.o

PENF/CMakeFiles/PENF.dir/penf.F90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/PENF.dir/penf.F90.i"
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && /Users/rbc-laptop/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/PENF/penf.F90 > CMakeFiles/PENF.dir/penf.F90.i

PENF/CMakeFiles/PENF.dir/penf.F90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/PENF.dir/penf.F90.s"
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && /Users/rbc-laptop/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/PENF/penf.F90 -o CMakeFiles/PENF.dir/penf.F90.s

PENF/CMakeFiles/PENF.dir/penf_b_size.F90.o: PENF/CMakeFiles/PENF.dir/flags.make
PENF/CMakeFiles/PENF.dir/penf_b_size.F90.o: ../PENF/penf_b_size.F90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building Fortran object PENF/CMakeFiles/PENF.dir/penf_b_size.F90.o"
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && /Users/rbc-laptop/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/PENF/penf_b_size.F90 -o CMakeFiles/PENF.dir/penf_b_size.F90.o

PENF/CMakeFiles/PENF.dir/penf_b_size.F90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/PENF.dir/penf_b_size.F90.i"
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && /Users/rbc-laptop/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/PENF/penf_b_size.F90 > CMakeFiles/PENF.dir/penf_b_size.F90.i

PENF/CMakeFiles/PENF.dir/penf_b_size.F90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/PENF.dir/penf_b_size.F90.s"
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && /Users/rbc-laptop/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/PENF/penf_b_size.F90 -o CMakeFiles/PENF.dir/penf_b_size.F90.s

PENF/CMakeFiles/PENF.dir/penf_global_parameters_variables.F90.o: PENF/CMakeFiles/PENF.dir/flags.make
PENF/CMakeFiles/PENF.dir/penf_global_parameters_variables.F90.o: ../PENF/penf_global_parameters_variables.F90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building Fortran object PENF/CMakeFiles/PENF.dir/penf_global_parameters_variables.F90.o"
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && /Users/rbc-laptop/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/PENF/penf_global_parameters_variables.F90 -o CMakeFiles/PENF.dir/penf_global_parameters_variables.F90.o

PENF/CMakeFiles/PENF.dir/penf_global_parameters_variables.F90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/PENF.dir/penf_global_parameters_variables.F90.i"
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && /Users/rbc-laptop/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/PENF/penf_global_parameters_variables.F90 > CMakeFiles/PENF.dir/penf_global_parameters_variables.F90.i

PENF/CMakeFiles/PENF.dir/penf_global_parameters_variables.F90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/PENF.dir/penf_global_parameters_variables.F90.s"
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && /Users/rbc-laptop/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/PENF/penf_global_parameters_variables.F90 -o CMakeFiles/PENF.dir/penf_global_parameters_variables.F90.s

PENF/CMakeFiles/PENF.dir/penf_stringify.F90.o: PENF/CMakeFiles/PENF.dir/flags.make
PENF/CMakeFiles/PENF.dir/penf_stringify.F90.o: ../PENF/penf_stringify.F90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building Fortran object PENF/CMakeFiles/PENF.dir/penf_stringify.F90.o"
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && /Users/rbc-laptop/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/PENF/penf_stringify.F90 -o CMakeFiles/PENF.dir/penf_stringify.F90.o

PENF/CMakeFiles/PENF.dir/penf_stringify.F90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/PENF.dir/penf_stringify.F90.i"
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && /Users/rbc-laptop/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/PENF/penf_stringify.F90 > CMakeFiles/PENF.dir/penf_stringify.F90.i

PENF/CMakeFiles/PENF.dir/penf_stringify.F90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/PENF.dir/penf_stringify.F90.s"
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && /Users/rbc-laptop/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/PENF/penf_stringify.F90 -o CMakeFiles/PENF.dir/penf_stringify.F90.s

# Object files for target PENF
PENF_OBJECTS = \
"CMakeFiles/PENF.dir/penf.F90.o" \
"CMakeFiles/PENF.dir/penf_b_size.F90.o" \
"CMakeFiles/PENF.dir/penf_global_parameters_variables.F90.o" \
"CMakeFiles/PENF.dir/penf_stringify.F90.o"

# External object files for target PENF
PENF_EXTERNAL_OBJECTS =

lib/libPENF.a: PENF/CMakeFiles/PENF.dir/penf.F90.o
lib/libPENF.a: PENF/CMakeFiles/PENF.dir/penf_b_size.F90.o
lib/libPENF.a: PENF/CMakeFiles/PENF.dir/penf_global_parameters_variables.F90.o
lib/libPENF.a: PENF/CMakeFiles/PENF.dir/penf_stringify.F90.o
lib/libPENF.a: PENF/CMakeFiles/PENF.dir/build.make
lib/libPENF.a: PENF/CMakeFiles/PENF.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking Fortran static library ../lib/libPENF.a"
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && $(CMAKE_COMMAND) -P CMakeFiles/PENF.dir/cmake_clean_target.cmake
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PENF.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
PENF/CMakeFiles/PENF.dir/build: lib/libPENF.a

.PHONY : PENF/CMakeFiles/PENF.dir/build

PENF/CMakeFiles/PENF.dir/clean:
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF && $(CMAKE_COMMAND) -P CMakeFiles/PENF.dir/cmake_clean.cmake
.PHONY : PENF/CMakeFiles/PENF.dir/clean

PENF/CMakeFiles/PENF.dir/depend:
	cd /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/PENF /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF /Users/rbc-laptop/Documents/GitHub/MOHID-Lagrangian/Libs/Build/PENF/CMakeFiles/PENF.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : PENF/CMakeFiles/PENF.dir/depend

