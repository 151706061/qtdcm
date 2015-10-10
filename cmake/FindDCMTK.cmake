find_path(DCMTK_DIR DCMTKConfig.cmake 
  /usr/lib/cmake/dcmtk
  /usr/local/lib/cmaked/dcmtk
  "C:/Program Files/dcmtk/lib/cmake/dcmtk"
  "C:/Program Files (x86)/dcmtk/lib/cmake/dcmtk"
  DOC "dcmtk directory"
)

set(DCMTK_CONFIG_FILE "${DCMTK_DIR}/DCMTKConfig.cmake")
# path is okay
if(EXISTS ${DCMTK_CONFIG_FILE})
  set(DCMTK_FOUND 1)
  include(${DCMTK_CONFIG_FILE})
else()
  set(DCMTK_FOUND 0)
  message(FATAL_ERROR "Please set DCMTK_DIR to the correct value")
endif()
