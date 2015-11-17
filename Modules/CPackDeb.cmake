##section Variables specific to CPack Debian (DEB) generator
##end
##module
# - The builtin (binary) CPack Deb generator (Unix only)
# CPackDeb may be used to create Deb package using CPack.
# CPackDeb is a CPack generator thus it uses the CPACK_XXX variables
# used by CPack : http://www.cmake.org/Wiki/CMake:CPackConfiguration.
# CPackDeb generator should work on any linux host but it will
# produce better deb package when Debian specific tools 'dpkg-xxx'
# are usable on the build system.
#
# CPackDeb has specific features which are controlled by
# the specifics CPACK_DEBIAN_XXX variables.You'll find a detailed usage on
# the wiki:
#  http://www.cmake.org/Wiki/CMake:CPackPackageGenerators#DEB_.28UNIX_only.29
# However as a handy reminder here comes the list of specific variables:
##end
#
##variable
# CPACK_DEBIAN_PACKAGE_NAME
#     Mandatory : YES
#     Default   : CPACK_PACKAGE_NAME (lower case)
#     The debian package summary
##end
##variable
# CPACK_DEBIAN_PACKAGE_VERSION
#     Mandatory : YES
#     Default   : CPACK_PACKAGE_VERSION
#     The debian package version
##end
##variable
# CPACK_DEBIAN_PACKAGE_ARCHITECTURE
#     Mandatory : NO
#     Default   : Output of dpkg --print-architecture (or i386 if dpkg is not found)
#     The debian package architecture
##end
##variable
# CPACK_DEBIAN_PACKAGE_DEPENDS
#     Mandatory : NO
#     Default   : -
#     May be used to set deb dependencies.
##end
##variable
# CPACK_DEBIAN_PACKAGE_MAINTAINER
#     Mandatory : YES
#     Default   : CPACK_PACKAGE_CONTACT
#     The debian package maintainer
##end
##variable
# CPACK_DEBIAN_PACKAGE_DESCRIPTION
#     Mandatory : YES
#     Default   : CPACK_PACKAGE_DESCRIPTION_SUMMARY
#     The debian package description
##end
##variable
# CPACK_DEBIAN_PACKAGE_SECTION
#     Mandatory : YES
#     Default   : 'devel'
#     The debian package section
##end
##variable
# CPACK_DEBIAN_PACKAGE_PRIORITY
#     Mandatory : YES
#     Default   : 'optional'
#     The debian package priority
##end
##variable
# CPACK_DEBIAN_PACKAGE_HOMEPAGE
#     Mandatory : NO
#     Default   : -
#     The URL of the web site for this package, preferably (when applicable) the
#     site from which the original source can be obtained and any additional
#     upstream documentation or information may be found.
#     The content of this field is a simple URL without any surrounding
#     characters such as <>.
##end
##variable
# CPACK_DEBIAN_PACKAGE_SHLIBDEPS
#     Mandatory : NO
#     Default   : OFF
#     May be set to ON in order to use dpkg-shlibdeps to generate
#     better package dependency list.
#     You may need set CMAKE_INSTALL_RPATH toi appropriate value
#     if you use this feature, because if you don't dpkg-shlibdeps
#     may fail to find your own shared libs.
#     See http://www.cmake.org/Wiki/CMake_RPATH_handling.
##end
##variable
# CPACK_DEBIAN_PACKAGE_SHLIBDEPS_SKIP_VIRTUAL_PACKAGES
#     Mandatory : NO
#     Default   : OFF
#     May be set to ON in order to skip virtual packages found by dpkg-shlibdeps.
##end
##variable
# CPACK_DEBIAN_PACKAGE_DEBUG
#     Mandatory : NO
#     Default   : -
#     May be set when invoking cpack in order to trace debug information
#     during CPackDeb run.
##end
##variable
# CPACK_DEBIAN_PACKAGE_PREDEPENDS
#     Mandatory : NO
#     Default   : -
#     see http://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps
#     This field is like Depends, except that it also forces dpkg to complete installation of
#     the packages named before even starting the installation of the package which declares
#     the pre-dependency.
##end
##variable
# CPACK_DEBIAN_PACKAGE_ENHANCES
#     Mandatory : NO
#     Default   : -
#     see http://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps
#     This field is similar to Suggests but works in the opposite direction.
#     It is used to declare that a package can enhance the functionality of another package.
##end
##variable
# CPACK_DEBIAN_PACKAGE_BREAKS
#     Mandatory : NO
#     Default   : -
#     see http://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps
#     When one binary package declares that it breaks another, dpkg will refuse to allow the
#     package which declares Breaks be installed unless the broken package is deconfigured first,
#     and it will refuse to allow the broken package to be reconfigured.
##end
##variable
# CPACK_DEBIAN_PACKAGE_CONFLICTS
#     Mandatory : NO
#     Default   : -
#     see http://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps
#     When one binary package declares a conflict with another using a Conflicts field,
#     dpkg will refuse to allow them to be installed on the system at the same time.
##end
##variable
# CPACK_DEBIAN_PACKAGE_PROVIDES
#     Mandatory : NO
#     Default   : -
#     see http://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps
#     A virtual package is one which appears in the Provides control field of another package.
##end
##variable
# CPACK_DEBIAN_PACKAGE_REPLACES
#     Mandatory : NO
#     Default   : -
#     see http://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps
#     Packages can declare in their control file that they should overwrite
#     files in certain other packages, or completely replace other packages.
##end
##variable
# CPACK_DEBIAN_PACKAGE_RECOMMENDS
#     Mandatory : NO
#     Default   : -
#     see http://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps
#     Allows packages to declare a strong, but not absolute, dependency on other packages.
##end
##variable
# CPACK_DEBIAN_PACKAGE_SUGGESTS
#     Mandatory : NO
#     Default   : -
#     see http://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps
#     Allows packages to declare a suggested package install grouping.
##end
##variable
# CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA
#     Mandatory : NO
#     Default   : -
#     This variable allow advanced user to add custom script to the control.tar.gz
#     Typical usage is for conffiles, postinst, postrm, prerm.
#     Usage: set(CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA
#            "${CMAKE_CURRENT_SOURCE_DIR/prerm;${CMAKE_CURRENT_SOURCE_DIR}/postrm")
##end


#=============================================================================
# Copyright 2007-2009 Kitware, Inc.
# Copyright 2007-2009 Mathieu Malaterre <mathieu.malaterre@gmail.com>
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file Copyright.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distribute this file outside of CMake, substitute the full
#  License text for the above reference.)

# CPack script for creating Debian package
# Author: Mathieu Malaterre
#
# http://wiki.debian.org/HowToPackageForDebian

unset(CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS)
unset(CPACK_DEBIAN_PACKAGE_SHLIBS_LIST)
unset(CPACK_DEBIAN_PACKAGE_SHLIBS)

unset(CPACK_DEBIAN_PACKAGE_CONFLICTS_FINAL)
unset(CPACK_DEBIAN_PACKAGE_PROVIDES_FINAL)
unset(CPACK_DEBIAN_PACKAGE_REPLACES_FINAL)
unset(CPACK_DEBIAN_PACKAGE_SUGGESTS_FINAL)
unset(CPACK_DEBIAN_PACKAGE_RECOMMENDS_FINAL)
unset(CPACK_DEBIAN_PACKAGE_ARCHITECTURE_FINAL)

unset(CPACK_DEB_BINARY_FILES)
unset(CPACK_DEB_SHARED_OBJECT_FILES)
unset(CPACK_DEBIAN_PACKAGE_SHLIBDEPS_DEPENDS)

if(CMAKE_BINARY_DIR)
  message(FATAL_ERROR "CPackDeb.cmake may only be used by CPack internally.")
endif()

if(NOT UNIX)
  message(FATAL_ERROR "CPackDeb.cmake may only be used under UNIX.")
endif()

if(CPACK_DEB_PACKAGE_COMPONENT)
  string(TOUPPER "${CPACK_DEB_PACKAGE_COMPONENT}" COMPONENT_UPCASE)

  if(CPACK_DEBIAN_PACKAGE_DEBUG)
    message("\nCPackDeb Debug: process component ${CPACK_DEB_PACKAGE_COMPONENT}")
  endif()
endif()

function(get_component_package_name var component)
  string(TOUPPER "${component}" component_upcase)
  if(CPACK_DEBIAN_COMPONENT_${component_upcase}_NAME)
    string(TOLOWER "${CPACK_DEBIAN_COMPONENT_${component_upcase}_NAME}" package_name)
  else()
    string(TOLOWER "${CPACK_PACKAGE_NAME}-${component}" package_name)
  endif()

  set("${var}" "${package_name}" PARENT_SCOPE)
endfunction()

function(get_files dir VAR)
  execute_process(COMMAND find -maxdepth 1 -type f
    COMMAND xargs file
    WORKING_DIRECTORY "${dir}"
    OUTPUT_VARIABLE files)

  # Convert to CMake list
  if (files)
    string(REGEX REPLACE "\n" ";" files ${files})
  endif()

  set("${VAR}" ${files} PARENT_SCOPE)
endfunction()

# extact shared files from given location
function(extract_shared_and_binary_objects dir shared_objects binary_objects)
  get_files("${dir}" files)

  foreach(file ${files})
    if("${file}" MATCHES "ELF.*shared object")
      string(REGEX MATCH "(^.*):" _FILE_NAME "${file}")
      list(APPEND _shared_objects ${CMAKE_MATCH_1})
    elseif("${file}" MATCHES "ELF.*dynamically linked")
      string(REGEX MATCH "(^.*):" _FILE_NAME "${file}")
      list(APPEND _binary_objects ${CMAKE_MATCH_1})
    endif()
  endforeach()

  set("${shared_objects}" ${_shared_objects} PARENT_SCOPE)
  set("${binary_objects}" ${_binary_objects} PARENT_SCOPE)
endfunction()

find_program(READELF_PROG NAMES readelf)

# extract RPATHs for a given shared object
function(extract_rpaths shared_object rpaths)
  if(READELF_PROG)
    execute_process(COMMAND "${READELF_PROG}" -d "${shared_object}"
      RESULT_VARIABLE _result
      OUTPUT_VARIABLE _output
      ERROR_QUIET
      OUTPUT_STRIP_TRAILING_WHITESPACE)

    if(${_result} EQUAL 0)
      string(REGEX MATCH "Library rpath: \\[(.*)\\]" _rpaths "${_output}")
      string(REPLACE ":" ";" paths "${CMAKE_MATCH_1}")
      set(${rpaths} ${paths} PARENT_SCOPE)
    endif()
  endif()
endfunction()

# explores given directory:
# 1. Find shared and binary object
# 2. Look their RPATHs add them for dpkg-shlibdeps
function(explore_directory dir output)
  if(NOT EXISTS "${dir}")
    return()
  endif()

  extract_shared_and_binary_objects("${dir}" shared_objects binary_objects)

  # add to library search paths if it contains .SO
  if(shared_objects)
    list(FIND ${output} "${dir}" index)
    if(${index} EQUAL -1)
      list(APPEND ${output} "${dir}")
    endif()
  endif()

  foreach(obj ${shared_objects} ${binary_objects})
    extract_rpaths("${dir}/${obj}" rpaths)

    foreach(rpath ${rpaths})
      list(FIND ${output} "${rpath}" index)
      if(${index} EQUAL -1)
        list(APPEND ${output} "${rpath}")
      endif()
    endforeach()
  endforeach()

  # set to parent scope
  set(${output} ${${output}} PARENT_SCOPE)
endfunction()

# CPACK_DEBIAN_PACKAGE_SHLIBDEPS
# If specify OFF, only user depends are used
if(NOT DEFINED CPACK_DEBIAN_PACKAGE_SHLIBDEPS)
  set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS OFF)
endif()

find_program(FAKEROOT_EXECUTABLE fakeroot)
if(FAKEROOT_EXECUTABLE)
  set(CPACK_DEBIAN_FAKEROOT_EXECUTABLE ${FAKEROOT_EXECUTABLE})
endif()

# Generating binary list - Get type of all install files
execute_process(COMMAND find -type f
  COMMAND xargs file
  WORKING_DIRECTORY "${CPACK_TEMPORARY_DIRECTORY}"
  OUTPUT_VARIABLE CPACK_DEB_INSTALL_FILES)

# Convert to CMake list
if (CPACK_DEB_INSTALL_FILES)
  string(REGEX REPLACE "\n" ";" CPACK_DEB_INSTALL_FILES ${CPACK_DEB_INSTALL_FILES})
endif()

# Only dynamically linked ELF files are included
# Extract only file name infront of ":"
foreach ( _FILE ${CPACK_DEB_INSTALL_FILES})
  if ( ${_FILE} MATCHES "ELF.*dynamically linked")
     string(REGEX MATCH "(^.*):" _FILE_NAME ${_FILE})
     list(APPEND CPACK_DEB_BINARY_FILES ${CMAKE_MATCH_1})
  endif()
  if ( ${_FILE} MATCHES "ELF.*shared object")
     string(REGEX MATCH "(^.*):" _FILE_NAME ${_FILE})
     list(APPEND CPACK_DEB_SHARED_OBJECT_FILES ${CMAKE_MATCH_1})
  endif()
endforeach()

if(CPACK_DEBIAN_PACKAGE_SHLIBDEPS)
  # dpkg-shlibdeps is a Debian utility for generating dependency list
  find_program(SHLIBDEPS_EXECUTABLE dpkg-shlibdeps)

  # Check version of the dpkg-shlibdeps tool using CPackRPM method
  if(SHLIBDEPS_EXECUTABLE)
    if(CPACK_DEBIAN_PACKAGE_DEBUG)
      execute_process(COMMAND ${SHLIBDEPS_EXECUTABLE} --version
        OUTPUT_VARIABLE _TMP_VERSION
        ERROR_QUIET
        OUTPUT_STRIP_TRAILING_WHITESPACE)
      string(REGEX MATCH "dpkg-shlibdeps version ([0-9]+\\.[0-9]+\\.[0-9]+)"
        SHLIBDEPS_EXECUTABLE_VERSION
        ${_TMP_VERSION})
      set(SHLIBDEPS_EXECUTABLE_VERSION "${CMAKE_MATCH_1}")

      message( "CPackDeb Debug: dpkg-shlibdeps version is <${SHLIBDEPS_EXECUTABLE_VERSION}>")
    endif()

    if(CPACK_DEB_BINARY_FILES)
      message( "CPackDeb: - Generating dependency list")

      # Create blank control file for running dpkg-shlibdeps
      # There might be some other way to invoke dpkg-shlibdeps without creating this file
      # but standard debian package should not have anything that can collide with this file or directory
      file(MAKE_DIRECTORY ${CPACK_TEMPORARY_DIRECTORY}/debian)
      file(WRITE ${CPACK_TEMPORARY_DIRECTORY}/debian/control "")

      # scan the CPACK_INSTALL_CMAKE_PROJECTS variable
      # it contains CMAKE_BINARY_DIR, try to detect library output path
      # and pass it as an option to dpkg-shlibdeps
      unset(lib_paths)
      list(GET CPACK_INSTALL_CMAKE_PROJECTS 0 build_dir)
      foreach(prefix lib libs bin)
        explore_directory("${build_dir}/${prefix}" lib_paths)
      endforeach()

      if(lib_paths)
        unset(export_ld_path)
        foreach(path ${lib_paths})
          set(export_ld_path "${export_ld_path}:${path}")
        endforeach()

        set(old_ld_path "ENV{LD_LIBRARY_PATH}")
        set(ENV{LD_LIBRARY_PATH} "$ENV{LD_LIBRARY_PATH}${export_ld_path}")
      endif()

      # Execute dpkg-shlibdeps
      # --ignore-missing-info : allow dpkg-shlibdeps to run even if some libs do not belong to a package
      # -O : print to STDOUT
      execute_process(COMMAND ${SHLIBDEPS_EXECUTABLE} --ignore-missing-info -O ${CPACK_DEB_BINARY_FILES}
        WORKING_DIRECTORY "${CPACK_TEMPORARY_DIRECTORY}"
        OUTPUT_VARIABLE SHLIBDEPS_OUTPUT
        RESULT_VARIABLE SHLIBDEPS_RESULT
        ERROR_VARIABLE SHLIBDEPS_ERROR
        ERROR_STRIP_TRAILING_WHITESPACE
        OUTPUT_STRIP_TRAILING_WHITESPACE )
      set(ENV{LD_LIBRARY_PATH} "${old_ld_path}")

      if(CPACK_DEBIAN_PACKAGE_DEBUG)
        # dpkg-shlibdeps will throw some warnings if some input files are not binary
        message( "CPackDeb Debug: dpkg-shlibdeps warnings \n${SHLIBDEPS_ERROR}")
      endif()
      if (NOT SHLIBDEPS_RESULT EQUAL 0)
        message (FATAL_ERROR "CPackDeb: dpkg-shlibdeps: ${SHLIBDEPS_ERROR}")
      endif ()

      #Get rid of prefix generated by dpkg-shlibdeps
      if (SHLIBDEPS_OUTPUT)
        string (REGEX REPLACE "^.*Depends=" "" CPACK_DEBIAN_PACKAGE_SHLIBDEPS_DEPENDS ${SHLIBDEPS_OUTPUT})
      endif()

      if(CPACK_DEBIAN_PACKAGE_DEBUG)
        message( "CPackDeb Debug: Found dependency: ${CPACK_DEBIAN_PACKAGE_SHLIBDEPS_DEPENDS}")
      endif()
    endif(CPACK_DEB_BINARY_FILES)

    # Append user depend if set
    if(CPACK_DEBIAN_PACKAGE_SHLIBDEPS_DEPENDS)
      set(CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS "${CPACK_DEBIAN_PACKAGE_SHLIBDEPS_DEPENDS}")
    endif()

    if (CPACK_DEB_BINARY_FILES)
      # Remove blank control file
      # Might not be safe if package actual contain file or directory named debian
      file(REMOVE_RECURSE "${CPACK_TEMPORARY_DIRECTORY}/debian")
    endif(CPACK_DEB_BINARY_FILES)
  else ()
    if(CPACK_DEBIAN_PACKAGE_DEBUG)
      message ("CPackDeb Debug: Using only user-provided depends because dpkg-shlibdeps is not found.")
    endif()
  endif()

else ()
  if(CPACK_DEBIAN_PACKAGE_DEBUG)
    message ("CPackDeb Debug: Using only user-provided depends")
  endif()
endif()

# Let's define the control file found in debian package:

# Binary package:
# http://www.debian.org/doc/debian-policy/ch-controlfields.html#s-binarycontrolfiles

# DEBIAN/control
# debian policy enforce lower case for package name
# Package: (mandatory)
if(NOT CPACK_DEBIAN_PACKAGE_NAME)
  string(TOLOWER "${CPACK_PACKAGE_NAME}" CPACK_DEBIAN_PACKAGE_NAME)
endif()

# Version: (mandatory)
if(NOT CPACK_DEBIAN_PACKAGE_VERSION)
  if(NOT CPACK_PACKAGE_VERSION)
    message(FATAL_ERROR "CPackDeb: Debian package requires a package version")
  endif()
  set(CPACK_DEBIAN_PACKAGE_VERSION ${CPACK_PACKAGE_VERSION})
endif()

# Architecture: (mandatory)
if(CPACK_DEB_PACKAGE_COMPONENT AND CPACK_DEBIAN_COMPONENT_${COMPONENT_UPCASE}_ARCHITECTURE)
  set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE_FINAL ${CPACK_DEBIAN_COMPONENT_${COMPONENT_UPCASE}_ARCHITECTURE})
elseif(NOT CPACK_DEBIAN_PACKAGE_ARCHITECTURE)
  # There is no such thing as i686 architecture on debian, you should use i386 instead
  # $ dpkg --print-architecture
  find_program(DPKG_CMD dpkg)
  if(NOT DPKG_CMD)
    message(STATUS "CPackDeb: Can not find dpkg in your path, default to i386.")
    set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE i386)
  endif()
  execute_process(COMMAND "${DPKG_CMD}" --print-architecture
    OUTPUT_VARIABLE CPACK_DEBIAN_PACKAGE_ARCHITECTURE
    OUTPUT_STRIP_TRAILING_WHITESPACE
    )
endif()

if(NOT CPACK_DEBIAN_PACKAGE_ARCHITECTURE_FINAL)
  set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE_FINAL "${CPACK_DEBIAN_PACKAGE_ARCHITECTURE}")
endif()

if(CPACK_DEB_PACKAGE_COMPONENT)
  set(COMPONENT_DEPENDS "")
  set(_DEPS "${CPACK_COMPONENT_${COMPONENT_UPCASE}_DEPENDS}")
  foreach (_PACK ${_DEPS})
    get_component_package_name(_PACK_NAME "${_PACK}")
    if(COMPONENT_DEPENDS)
      set(COMPONENT_DEPENDS "${_PACK_NAME} (= ${CPACK_DEBIAN_PACKAGE_VERSION}), ${COMPONENT_DEPENDS}")
    else()
      set(COMPONENT_DEPENDS "${_PACK_NAME} (= ${CPACK_DEBIAN_PACKAGE_VERSION})")
    endif()
  endforeach()
  if (COMPONENT_DEPENDS)
    if (CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS)
      set(CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS "${COMPONENT_DEPENDS}, ${CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS}")
    else()
      string(STRIP COMPONENT_DEPENDS ${COMPONENT_DEPENDS})
      string(REPLACE REGEX "\\,*$" "" COMPONENT_DEPENDS ${COMPONENT_DEPENDS})
      set(CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS ${COMPONENT_DEPENDS})
    endif()
  endif()

  set(_DEB_DEPENDS ${CPACK_DEB_${COMPONENT_UPCASE}_PACKAGE_DEPENDS})
  if(_DEB_DEPENDS)

    if(CPACK_DEBIAN_PACKAGE_SHLIBDEPS_SKIP_VIRTUAL_PACKAGES)
      find_program(APT_CACHE_EXECUTABLE NAMES apt-cache)

      if(APT_CACHE_EXECUTABLE)

        # preprocess CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS packages to eliminate virtual ones
        string(REPLACE "," ";" deps "${CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS}")
        foreach(dependency ${deps})
          string(REGEX REPLACE "\\(.+\\)" "" package_name "${dependency}")
          string(STRIP "${package_name}" package_name)

          if(package_name)
            execute_process(COMMAND "${APT_CACHE_EXECUTABLE}" show ${package_name}
                RESULT_VARIABLE result
                OUTPUT_VARIABLE output
                ERROR_VARIABLE output
                OUTPUT_STRIP_TRAILING_WHITESPACE
                ERROR_STRIP_TRAILING_WHITESPACE)

            if(${result} EQUAL 0)
              if(NOT output) # it's a virtual package
                message("CPackDeb: the \"${package_name}\" package is a virtual one. Skipping.")
                list(APPEND deps_to_remove "${dependency}")
              endif()
            elseif(CPACK_DEBIAN_PACKAGE_DEBUG)
              message("CPackDeb:Debug: failed to retrieve the \"${package_name}\" package info.")
            endif()

            unset(output)
            unset(result)
          endif()
        endforeach()

        if(deps_to_remove)
          list(REMOVE_ITEM deps ${deps_to_remove})
          string(REPLACE ";" "," CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS "${deps}")
        endif()

        unset(deps_to_remove)
        unset(deps)
      endif()
    endif(CPACK_DEBIAN_PACKAGE_SHLIBDEPS_SKIP_VIRTUAL_PACKAGES)

    if (CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS)
      set(CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS "${CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS}, ${_DEB_DEPENDS}")
    else()
      set(CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS ${_DEB_DEPENDS})
    endif()
  endif()
endif(CPACK_DEB_PACKAGE_COMPONENT)


set (CPACK_DEBIAN_PACKAGE_DEPENDS "${CPACK_DEBIAN_PACKAGE_AUTO_DEPENDS}")

# have a look at get_property(result GLOBAL PROPERTY ENABLED_FEATURES),
# this returns the successful find_package() calls, maybe this can help
# Depends:
# You should set: DEBIAN_PACKAGE_DEPENDS
# TODO: automate 'objdump -p | grep NEEDED'
if(NOT CPACK_DEBIAN_PACKAGE_DEPENDS)
  message(STATUS "CPACK_DEBIAN_PACKAGE_DEPENDS not set, the package will have no dependencies.")
endif()

if (CPACK_DEB_PACKAGE_COMPONENT AND CPACK_COMPONENT_${COMPONENT_UPCASE}_CONFLICTS)
  set(CPACK_DEBIAN_PACKAGE_CONFLICTS_FINAL ${CPACK_COMPONENT_${COMPONENT_UPCASE}_CONFLICTS})
else()
  set(CPACK_DEBIAN_PACKAGE_CONFLICTS_FINAL ${CPACK_DEBIAN_PACKAGE_CONFLICTS})
endif()

if (CPACK_DEB_PACKAGE_COMPONENT AND CPACK_COMPONENT_${COMPONENT_UPCASE}_PROVIDES)
  set(CPACK_DEBIAN_PACKAGE_PROVIDES_FINAL ${CPACK_COMPONENT_${COMPONENT_UPCASE}_PROVIDES})
else()
  set(CPACK_DEBIAN_PACKAGE_PROVIDES_FINAL ${CPACK_DEBIAN_PACKAGE_PROVIDES})
endif()

if (CPACK_DEB_PACKAGE_COMPONENT AND CPACK_COMPONENT_${COMPONENT_UPCASE}_REPLACES)
  set(CPACK_DEBIAN_PACKAGE_REPLACES_FINAL ${CPACK_COMPONENT_${COMPONENT_UPCASE}_REPLACES})
else()
  set(CPACK_DEBIAN_PACKAGE_REPLACES_FINAL ${CPACK_DEBIAN_PACKAGE_REPLACES})
endif()

if (CPACK_DEB_PACKAGE_COMPONENT AND CPACK_COMPONENT_${COMPONENT_UPCASE}_RECOMMENDS)
  set(CPACK_DEBIAN_PACKAGE_RECOMMENDS_FINAL ${CPACK_COMPONENT_${COMPONENT_UPCASE}_RECOMMENDS})
else()
  set(CPACK_DEBIAN_PACKAGE_RECOMMENDS_FINAL ${CPACK_DEBIAN_PACKAGE_RECOMMENDS})
endif()

if (CPACK_DEB_PACKAGE_COMPONENT AND CPACK_COMPONENT_${COMPONENT_UPCASE}_SUGGESTS)
  set(CPACK_DEBIAN_PACKAGE_SUGGESTS_FINAL ${CPACK_COMPONENT_${COMPONENT_UPCASE}_SUGGESTS})
else()
  set(CPACK_DEBIAN_PACKAGE_SUGGESTS_FINAL ${CPACK_DEBIAN_PACKAGE_SUGGESTS})
endif()

# Maintainer: (mandatory)
if(NOT CPACK_DEBIAN_PACKAGE_MAINTAINER)
  if(NOT CPACK_PACKAGE_CONTACT)
    message(FATAL_ERROR "CPackDeb: Debian package requires a maintainer for a package, set CPACK_PACKAGE_CONTACT or CPACK_DEBIAN_PACKAGE_MAINTAINER")
  endif()
  set(CPACK_DEBIAN_PACKAGE_MAINTAINER ${CPACK_PACKAGE_CONTACT})
endif()

# Description: (mandatory)
if(CPACK_PACKAGE_DESCRIPTION_SUMMARY AND NOT CPACK_DEBIAN_PACKAGE_DESCRIPTION)
  set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "${CPACK_PACKAGE_DESCRIPTION_SUMMARY}")
endif()

if(CPACK_DEB_PACKAGE_COMPONENT)
  if(CPACK_DEBIAN_COMPONENT_${COMPONENT_UPCASE}_DESCRIPTION)
    set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "${CPACK_DEBIAN_COMPONENT_${COMPONENT_UPCASE}_DESCRIPTION}")
  elseif(CPACK_COMPONENT_${COMPONENT_UPCASE}_DESCRIPTION)
    set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "${CPACK_COMPONENT_${COMPONENT_UPCASE}_DESCRIPTION}")
  endif()
else()
  set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "${CPACK_PACKAGE_DESCRIPTION_SUMMARY}")
endif()

if(NOT CPACK_DEBIAN_PACKAGE_DESCRIPTION)
  message(FATAL_ERROR "CPackDeb: Debian package requires a summary for a package, set CPACK_PACKAGE_DESCRIPTION_SUMMARY or CPACK_DEBIAN_PACKAGE_DESCRIPTION")
endif()

# Section: (recommended)
if(NOT CPACK_DEBIAN_PACKAGE_SECTION)
  set(CPACK_DEBIAN_PACKAGE_SECTION "devel")
endif()

if(CPACK_DEB_PACKAGE_COMPONENT AND CPACK_DEBIAN_COMPONENT_${COMPONENT_UPCASE}_SECTION)
  set(CPACK_DEBIAN_PACKAGE_SECTION_FINAL ${CPACK_DEBIAN_COMPONENT_${COMPONENT_UPCASE}_SECTION})
else()
  set(CPACK_DEBIAN_PACKAGE_SECTION_FINAL ${CPACK_DEBIAN_PACKAGE_SECTION})
endif()

# Priority: (recommended)
if(NOT CPACK_DEBIAN_PACKAGE_PRIORITY)
  set(CPACK_DEBIAN_PACKAGE_PRIORITY "optional")
endif()

# Recommends:
# You should set: CPACK_DEBIAN_PACKAGE_RECOMMENDS

# Suggests:
# You should set: CPACK_DEBIAN_PACKAGE_SUGGESTS

# CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA
# This variable allow advanced user to add custom script to the control.tar.gz (inside the .deb archive)
# Typical examples are:
# - conffiles
# - postinst
# - postrm
# - prerm"
# Usage:
# set(CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA
#    "${CMAKE_CURRENT_SOURCE_DIR/prerm;${CMAKE_CURRENT_SOURCE_DIR}/postrm")

# Are we packaging components ?
if(CPACK_DEB_PACKAGE_COMPONENT)
  get_component_package_name(CPACK_DEBIAN_PACKAGE_NAME "${CPACK_DEB_PACKAGE_COMPONENT}")
endif()

# Generate shlibs file
foreach(_FILE ${CPACK_DEB_SHARED_OBJECT_FILES})
  get_filename_component(_LIBNAME ${_FILE} NAME_WE)
  get_filename_component(_LIBEXT ${_FILE} EXT)
  string(REGEX MATCH "so\\.([0-9]+\\.[0-9]+).*" _TARGET_VERSION ${_LIBEXT})
  list(APPEND CPACK_DEBIAN_PACKAGE_SHLIBS_LIST "${_LIBNAME} ${CMAKE_MATCH_1} ${CPACK_DEBIAN_PACKAGE_NAME} (>= ${CPACK_DEBIAN_PACKAGE_VERSION})")
endforeach()
if (CPACK_DEBIAN_PACKAGE_SHLIBS_LIST)
  string(REPLACE ";" "\n" CPACK_DEBIAN_PACKAGE_SHLIBS "${CPACK_DEBIAN_PACKAGE_SHLIBS_LIST}")
endif()

# add ldconfig call in default postrm and postint
set(CPACK_ADD_LDCONFIG_CALL 0)
foreach(_FILE ${CPACK_DEB_SHARED_OBJECT_FILES})
  get_filename_component(_DIR ${_FILE} DIRECTORY)
  # all files in CPACK_DEB_SHARED_OBJECT_FILES have dot at the beginning
  if(_DIR STREQUAL "./lib" OR _DIR STREQUAL "./usr/lib")
    set(CPACK_ADD_LDCONFIG_CALL 1)
  endif()
endforeach()

set(WDIR "${CPACK_TOPLEVEL_DIRECTORY}/${CPACK_PACKAGE_FILE_NAME}${CPACK_DEB_PACKAGE_COMPONENT_PART_PATH}")

# Patch package file name to be in corrent form
if(CPACK_DEB_PACKAGE_COMPONENT)
  set(CPACK_OUTPUT_FILE_NAME "${CPACK_DEBIAN_PACKAGE_NAME}_${CPACK_PACKAGE_VERSION}_${CPACK_DEBIAN_PACKAGE_ARCHITECTURE_FINAL}.deb")
  set(CPACK_TEMPORARY_PACKAGE_FILE_NAME "${CPACK_TOPLEVEL_DIRECTORY}/${CPACK_OUTPUT_FILE_NAME}")

  get_filename_component(BINARY_DIR "${CPACK_OUTPUT_FILE_PATH}" DIRECTORY)
  set(CPACK_OUTPUT_FILE_PATH "${BINARY_DIR}/${CPACK_OUTPUT_FILE_NAME}")
endif()

# Print out some debug information if we were asked for that
if(CPACK_DEBIAN_PACKAGE_DEBUG)
   message("CPackDeb:Debug: CPACK_TOPLEVEL_DIRECTORY          = ${CPACK_TOPLEVEL_DIRECTORY}")
   message("CPackDeb:Debug: CPACK_TOPLEVEL_TAG                = ${CPACK_TOPLEVEL_TAG}")
   message("CPackDeb:Debug: CPACK_TEMPORARY_DIRECTORY         = ${CPACK_TEMPORARY_DIRECTORY}")
   message("CPackDeb:Debug: CPACK_OUTPUT_FILE_NAME            = ${CPACK_OUTPUT_FILE_NAME}")
   message("CPackDeb:Debug: CPACK_OUTPUT_FILE_PATH            = ${CPACK_OUTPUT_FILE_PATH}")
   message("CPackDeb:Debug: CPACK_PACKAGE_FILE_NAME           = ${CPACK_PACKAGE_FILE_NAME}")
   message("CPackDeb:Debug: CPACK_PACKAGE_INSTALL_DIRECTORY   = ${CPACK_PACKAGE_INSTALL_DIRECTORY}")
   message("CPackDeb:Debug: CPACK_TEMPORARY_PACKAGE_FILE_NAME = ${CPACK_TEMPORARY_PACKAGE_FILE_NAME}")
endif()

# For debian source packages:
# debian/control
# http://www.debian.org/doc/debian-policy/ch-controlfields.html#s-sourcecontrolfiles

# .dsc
# http://www.debian.org/doc/debian-policy/ch-controlfields.html#s-debiansourcecontrolfiles

# Builds-Depends:
#if(NOT CPACK_DEBIAN_PACKAGE_BUILDS_DEPENDS)
#  set(CPACK_DEBIAN_PACKAGE_BUILDS_DEPENDS
#    "debhelper (>> 5.0.0), libncurses5-dev, tcl8.4"
#  )
#endif()
