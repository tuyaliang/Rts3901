# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/.formosa/build

# Include any dependencies generated for this target.
include example/CMakeFiles/example_audio_playback_stream.dir/depend.make

# Include the progress variables for this target.
include example/CMakeFiles/example_audio_playback_stream.dir/progress.make

# Include the compile flags for this target's objects.
include example/CMakeFiles/example_audio_playback_stream.dir/flags.make

example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o: example/CMakeFiles/example_audio_playback_stream.dir/flags.make
example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o: ../../example/example_audio_playback_stream.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/.formosa/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o"
	cd /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/.formosa/build/example && /home/tony_nie/ipcam/4dpocket/release/.build/build/toolchain/rsdk-4.8.5-5281-EL-3.10-u0.9.33-m32ut-160408/bin/rsdk-linux-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o   -c /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/example/example_audio_playback_stream.c

example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.i"
	cd /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/.formosa/build/example && /home/tony_nie/ipcam/4dpocket/release/.build/build/toolchain/rsdk-4.8.5-5281-EL-3.10-u0.9.33-m32ut-160408/bin/rsdk-linux-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/example/example_audio_playback_stream.c > CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.i

example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.s"
	cd /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/.formosa/build/example && /home/tony_nie/ipcam/4dpocket/release/.build/build/toolchain/rsdk-4.8.5-5281-EL-3.10-u0.9.33-m32ut-160408/bin/rsdk-linux-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/example/example_audio_playback_stream.c -o CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.s

example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o.requires:
.PHONY : example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o.requires

example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o.provides: example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o.requires
	$(MAKE) -f example/CMakeFiles/example_audio_playback_stream.dir/build.make example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o.provides.build
.PHONY : example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o.provides

example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o.provides.build: example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o

# Object files for target example_audio_playback_stream
example_audio_playback_stream_OBJECTS = \
"CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o"

# External object files for target example_audio_playback_stream
example_audio_playback_stream_EXTERNAL_OBJECTS =

example/example_audio_playback_stream: example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o
example/example_audio_playback_stream: example/CMakeFiles/example_audio_playback_stream.dir/build.make
example/example_audio_playback_stream: librtstream.so.1.0.21
example/example_audio_playback_stream: media/audio/common/rtsamixer/librtsamixer.so.0.0.2
example/example_audio_playback_stream: media/audio/codec/librtsacodec.so.0.0.2
example/example_audio_playback_stream: example/CMakeFiles/example_audio_playback_stream.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable example_audio_playback_stream"
	cd /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/.formosa/build/example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_audio_playback_stream.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/CMakeFiles/example_audio_playback_stream.dir/build: example/example_audio_playback_stream
.PHONY : example/CMakeFiles/example_audio_playback_stream.dir/build

example/CMakeFiles/example_audio_playback_stream.dir/requires: example/CMakeFiles/example_audio_playback_stream.dir/example_audio_playback_stream.c.o.requires
.PHONY : example/CMakeFiles/example_audio_playback_stream.dir/requires

example/CMakeFiles/example_audio_playback_stream.dir/clean:
	cd /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/.formosa/build/example && $(CMAKE_COMMAND) -P CMakeFiles/example_audio_playback_stream.dir/cmake_clean.cmake
.PHONY : example/CMakeFiles/example_audio_playback_stream.dir/clean

example/CMakeFiles/example_audio_playback_stream.dir/depend:
	cd /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/.formosa/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/example /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/.formosa/build /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/.formosa/build/example /home/tony_nie/ipcam/4dpocket/release/.build/build/users/rtscore/rtstream/.formosa/build/example/CMakeFiles/example_audio_playback_stream.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/CMakeFiles/example_audio_playback_stream.dir/depend
