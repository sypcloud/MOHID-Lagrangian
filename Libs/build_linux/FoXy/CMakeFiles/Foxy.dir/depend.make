# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

# Note that incremental build could trigger a call to cmake_copy_f90_mod on each re-build

FoXy/CMakeFiles/Foxy.dir/foxy.f90.o: FoXy/CMakeFiles/Foxy.dir/foxy_xml_file.mod.stamp
FoXy/CMakeFiles/Foxy.dir/foxy.f90.o: FoXy/CMakeFiles/Foxy.dir/foxy_xml_tag.mod.stamp
FoXy/CMakeFiles/Foxy.dir/foxy.f90.o: modules/penf.mod
FoXy/CMakeFiles/Foxy.dir/foxy.f90.o.provides.build: FoXy/CMakeFiles/Foxy.dir/foxy.mod.stamp
FoXy/CMakeFiles/Foxy.dir/foxy.mod.stamp: FoXy/CMakeFiles/Foxy.dir/foxy.f90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod modules/foxy FoXy/CMakeFiles/Foxy.dir/foxy.mod.stamp GNU
FoXy/CMakeFiles/Foxy.dir/foxy.f90.o.provides.build:
	$(CMAKE_COMMAND) -E touch FoXy/CMakeFiles/Foxy.dir/foxy.f90.o.provides.build
FoXy/CMakeFiles/Foxy.dir/build: FoXy/CMakeFiles/Foxy.dir/foxy.f90.o.provides.build

FoXy/CMakeFiles/Foxy.dir/foxy_xml_file.f90.o: FoXy/CMakeFiles/Foxy.dir/foxy_xml_tag.mod.stamp
FoXy/CMakeFiles/Foxy.dir/foxy_xml_file.f90.o: modules/penf.mod
FoXy/CMakeFiles/Foxy.dir/foxy_xml_file.f90.o.provides.build: FoXy/CMakeFiles/Foxy.dir/foxy_xml_file.mod.stamp
FoXy/CMakeFiles/Foxy.dir/foxy_xml_file.mod.stamp: FoXy/CMakeFiles/Foxy.dir/foxy_xml_file.f90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod modules/foxy_xml_file FoXy/CMakeFiles/Foxy.dir/foxy_xml_file.mod.stamp GNU
FoXy/CMakeFiles/Foxy.dir/foxy_xml_file.f90.o.provides.build:
	$(CMAKE_COMMAND) -E touch FoXy/CMakeFiles/Foxy.dir/foxy_xml_file.f90.o.provides.build
FoXy/CMakeFiles/Foxy.dir/build: FoXy/CMakeFiles/Foxy.dir/foxy_xml_file.f90.o.provides.build

FoXy/CMakeFiles/Foxy.dir/foxy_xml_tag.f90.o: modules/penf.mod
FoXy/CMakeFiles/Foxy.dir/foxy_xml_tag.f90.o: modules/stringifor.mod
FoXy/CMakeFiles/Foxy.dir/foxy_xml_tag.f90.o.provides.build: FoXy/CMakeFiles/Foxy.dir/foxy_xml_tag.mod.stamp
FoXy/CMakeFiles/Foxy.dir/foxy_xml_tag.mod.stamp: FoXy/CMakeFiles/Foxy.dir/foxy_xml_tag.f90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod modules/foxy_xml_tag FoXy/CMakeFiles/Foxy.dir/foxy_xml_tag.mod.stamp GNU
FoXy/CMakeFiles/Foxy.dir/foxy_xml_tag.f90.o.provides.build:
	$(CMAKE_COMMAND) -E touch FoXy/CMakeFiles/Foxy.dir/foxy_xml_tag.f90.o.provides.build
FoXy/CMakeFiles/Foxy.dir/build: FoXy/CMakeFiles/Foxy.dir/foxy_xml_tag.f90.o.provides.build
