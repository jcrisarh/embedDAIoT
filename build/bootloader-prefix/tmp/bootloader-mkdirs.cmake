# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/cristina/esp-idf/components/bootloader/subproject"
  "/home/cristina/ESPECIALIDAD_IA/APPIOT/embebido/ssl/build/bootloader"
  "/home/cristina/ESPECIALIDAD_IA/APPIOT/embebido/ssl/build/bootloader-prefix"
  "/home/cristina/ESPECIALIDAD_IA/APPIOT/embebido/ssl/build/bootloader-prefix/tmp"
  "/home/cristina/ESPECIALIDAD_IA/APPIOT/embebido/ssl/build/bootloader-prefix/src/bootloader-stamp"
  "/home/cristina/ESPECIALIDAD_IA/APPIOT/embebido/ssl/build/bootloader-prefix/src"
  "/home/cristina/ESPECIALIDAD_IA/APPIOT/embebido/ssl/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/cristina/ESPECIALIDAD_IA/APPIOT/embebido/ssl/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/cristina/ESPECIALIDAD_IA/APPIOT/embebido/ssl/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
