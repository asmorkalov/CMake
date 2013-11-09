include(Platform/Windows-MSVC)
set(_COMPILE_CXX " /TP")
if(NOT CMAKE_CXX_COMPILER_VERSION VERSION_LESS 18.0)
  set(_FS_CXX " /FS")
endif()
__windows_compiler_msvc(CXX)

include("${CMAKE_ROOT}/Modules/Internal/FeatureTesting.cmake")

record_compiler_features(CXX "" ${CMAKE_CXX_COMPILE_FEATURES})
