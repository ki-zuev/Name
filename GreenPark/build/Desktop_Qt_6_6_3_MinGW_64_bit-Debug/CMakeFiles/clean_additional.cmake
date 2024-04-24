# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appGreenPark_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appGreenPark_autogen.dir\\ParseCache.txt"
  "appGreenPark_autogen"
  )
endif()
