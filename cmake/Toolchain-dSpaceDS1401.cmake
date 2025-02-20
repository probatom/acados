SET(CMAKE_SYSTEM_NAME "dSpaceDS1401")
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})
SET(CMAKE_SYSTEM_PROCESSOR "ppc")

# TODO: cmake_path instead?
# cmake_path(CONVERT "C:\\ProgramData\\dSPACE\\AD52223F-E7EC-4A16-97FB-8ADC3C426EE0\\Compiler\\PPCTools" TO_CMAKE_PATH_LIST DSPACE_DS1401_COMPILER_DIR NORMALIZE)
# 
file(TO_CMAKE_PATH "C:/ProgramData/dSPACE/071346EA-BFFA-4465-9551-2E48EDF35320" DSPACE_TOOLS)
set(DSPACE_RTLIB "C:/dSPACE RCPHIL 2017-B/DS1401/RTLib")
set(DSPACE_PPCTOOLS "${DSPACE_TOOLS}/Compiler/PPCTools")

# C Compiler
find_program(CMAKE_C_COMPILER NAMES ${DSPACE_PPCTOOLS}/bin/mccppc.exe)
# C++ Compiler
find_program(CMAKE_CXX_COMPILER NAMES ${DSPACE_PPCTOOLS}/bin/mccppc.exe)
# Assembler
find_program(CMAKE_ASM_COMPILER NAMES ${DSPACE_PPCTOOLS}/bin/asmppc.exe
set(CMAKE_RANLIB ":")

find_program(CMAKE_MAKE_PROGRAM NAMES "C:/dSPACE RCPHIL 2017-B/Exe/DSMAKE.exe")

SET(CMAKE_FIND_ROOT_PATH ${DSPACE_PPCTOOLS}) 
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

add_definitions(-D__MABX2__ -D__DSPACE__)

# Compiler flags
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -H -J{DSPACE_RTLIB}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -H -J{DSPACE_RTLIB}")
set(CMAKE_C_FLAGS "-Ot -Oi -Or -Ox -D_INLINE" CACHE STRING "" FORCE)

# acados flags
set(BLASFEO_TARGET "GENERIC" CACHE STRING "BLASFEO Target architecture")
set(HPIPM_TARGET "GENERIC" CACHE STRING "HPIPM Target architecture")
set(BUILD_SHARED_LIBS OFF CACHE STRING "Build shared libraries")
set(BLASFEO_EXAMPLES OFF CACHE BOOL "Examples disabled")
set(EXT_DEP OFF CACHE BOOL "Compile external dependencies in BLASFEO")
set(ACADOS_INSTALL_DIR "install" CACHE PATH  "Installation path to ACADOS_INSTALL_DIR")

