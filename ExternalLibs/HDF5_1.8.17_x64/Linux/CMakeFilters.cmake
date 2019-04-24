
#-----------------------------------------------------------------------------
# Options for HDF5 Filters
#-----------------------------------------------------------------------------
MACRO (HDF5_SETUP_FILTERS FILTER)
  option (HDF5_USE_FILTER_${FILTER} "Use the ${FILTER} Filter" ON)
  if (HDF5_USE_FILTER_${FILTER})
    set (H5_HAVE_FILTER_${FILTER} 1)
    set (FILTERS "${FILTERS} ${FILTER}")
  endif (HDF5_USE_FILTER_${FILTER})
  # message (STATUS "Filter ${FILTER} is ${HDF5_USE_FILTER_${FILTER}}")
ENDMACRO (HDF5_SETUP_FILTERS)

include (ExternalProject)
#option (HDF5_ALLOW_EXTERNAL_SUPPORT "Allow External Library Building (NO SVN TGZ)" "NO")
set (HDF5_ALLOW_EXTERNAL_SUPPORT "NO" CACHE STRING "Allow External Library Building (NO SVN TGZ)")
set_property (CACHE HDF5_ALLOW_EXTERNAL_SUPPORT PROPERTY STRINGS NO SVN TGZ)
if (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "SVN" OR HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "TGZ")
  option (ZLIB_USE_EXTERNAL "Use External Library Building for ZLIB" 1)
  option (SZIP_USE_EXTERNAL "Use External Library Building for SZIP" 1)
  if (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "SVN")
    set (ZLIB_URL ${ZLIB_SVN_URL} CACHE STRING "Path to zlib Subversion repository")
    set (SZIP_URL ${SZIP_SVN_URL} CACHE STRING "Path to szip Subversion repository")
  elseif (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "TGZ")
    if (NOT TGZPATH)
      set (TGZPATH ${HDF5_SOURCE_DIR})
    endif (NOT TGZPATH)
    set (ZLIB_URL ${TGZPATH}/${ZLIB_TGZ_NAME})
    set (SZIP_URL ${TGZPATH}/${SZIP_TGZ_NAME})
  else (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "SVN")
    set (ZLIB_USE_EXTERNAL 0)
    set (SZIP_USE_EXTERNAL 0)
  endif (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "SVN")
endif (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "SVN" OR HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "TGZ")

#-----------------------------------------------------------------------------
# Option for ZLib support
#-----------------------------------------------------------------------------
option (HDF5_ENABLE_Z_LIB_SUPPORT "Enable Zlib Filters" OFF)
if (HDF5_ENABLE_Z_LIB_SUPPORT)
  if (NOT H5_ZLIB_HEADER)
    if (NOT ZLIB_USE_EXTERNAL)
      find_package (ZLIB NAMES ${ZLIB_PACKAGE_NAME}${HDF_PACKAGE_EXT})
      if (NOT ZLIB_FOUND)
        find_package (ZLIB) # Legacy find
        if (ZLIB_FOUND)
          set (LINK_LIBS ${LINK_LIBS} ${ZLIB_LIBRARIES})
        endif (ZLIB_FOUND)
      endif (NOT ZLIB_FOUND)
    endif (NOT ZLIB_USE_EXTERNAL)
    if (ZLIB_FOUND)
      set (H5_HAVE_FILTER_DEFLATE 1)
      set (H5_HAVE_ZLIB_H 1)
      set (H5_HAVE_LIBZ 1)
      set (H5_ZLIB_HEADER "zlib.h")
      set (ZLIB_INCLUDE_DIR_GEN ${ZLIB_INCLUDE_DIR})
      set (ZLIB_INCLUDE_DIRS ${ZLIB_INCLUDE_DIRS} ${ZLIB_INCLUDE_DIR})
    else (ZLIB_FOUND)
      if (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "SVN" OR HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "TGZ")
        EXTERNAL_ZLIB_LIBRARY (${HDF5_ALLOW_EXTERNAL_SUPPORT} ${LIB_TYPE})
        set (H5_HAVE_FILTER_DEFLATE 1)
        set (H5_HAVE_ZLIB_H 1)
        set (H5_HAVE_LIBZ 1)
        message (STATUS "Filter ZLIB is built")
      else (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "SVN" OR HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "TGZ")
        message (FATAL_ERROR " ZLib is Required for ZLib support in HDF5")
      endif (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "SVN" OR HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "TGZ")
    endif (ZLIB_FOUND)
  else (NOT H5_ZLIB_HEADER)
    # This project is being called from within another and ZLib is already configured
    set (H5_HAVE_FILTER_DEFLATE 1)
    set (H5_HAVE_ZLIB_H 1)
    set (H5_HAVE_LIBZ 1)
  endif (NOT H5_ZLIB_HEADER)
  if (H5_HAVE_FILTER_DEFLATE)
    set (EXTERNAL_FILTERS "${EXTERNAL_FILTERS} DEFLATE")
  endif (H5_HAVE_FILTER_DEFLATE)
  set (LINK_LIBS ${LINK_LIBS} ${ZLIB_LIBRARIES})
  INCLUDE_DIRECTORIES (${ZLIB_INCLUDE_DIRS})
  message (STATUS "Filter ZLIB is ON")
endif (HDF5_ENABLE_Z_LIB_SUPPORT)

#-----------------------------------------------------------------------------
# Option for SzLib support
#-----------------------------------------------------------------------------
option (HDF5_ENABLE_SZIP_SUPPORT "Use SZip Filter" OFF)
if (HDF5_ENABLE_SZIP_SUPPORT)
  option (HDF5_ENABLE_SZIP_ENCODING "Use SZip Encoding" OFF)
  if (NOT SZIP_USE_EXTERNAL)
    find_package (SZIP NAMES ${SZIP_PACKAGE_NAME}${HDF_PACKAGE_EXT})
    if (NOT SZIP_FOUND)
      find_package (SZIP) # Legacy find
      if (SZIP_FOUND)
        set (LINK_LIBS ${LINK_LIBS} ${SZIP_LIBRARIES})
      endif (SZIP_FOUND)
    endif (NOT SZIP_FOUND)
  endif (NOT SZIP_USE_EXTERNAL)
  if (SZIP_FOUND)
    set (H5_HAVE_FILTER_SZIP 1)
    set (H5_HAVE_SZLIB_H 1)
    set (H5_HAVE_LIBSZ 1)
    set (SZIP_INCLUDE_DIR_GEN ${SZIP_INCLUDE_DIR})
    set (SZIP_INCLUDE_DIRS ${SZIP_INCLUDE_DIR})
  else (SZIP_FOUND)
    if (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "SVN" OR HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "TGZ")
      EXTERNAL_SZIP_LIBRARY (${HDF5_ALLOW_EXTERNAL_SUPPORT} ${LIB_TYPE} ${HDF5_ENABLE_SZIP_ENCODING})
      set (H5_HAVE_FILTER_SZIP 1)
      set (H5_HAVE_SZLIB_H 1)
      set (H5_HAVE_LIBSZ 1)
      message (STATUS "Filter SZIP is built")
    else (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "SVN" OR HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "TGZ")
      message (FATAL_ERROR "SZIP is Required for SZIP support in HDF5")
    endif (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "SVN" OR HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "TGZ")
  endif (SZIP_FOUND)
  set (LINK_LIBS ${LINK_LIBS} ${SZIP_LIBRARIES})
  INCLUDE_DIRECTORIES (${SZIP_INCLUDE_DIRS})
  message (STATUS "Filter SZIP is ON")
  if (H5_HAVE_FILTER_SZIP)
    set (EXTERNAL_FILTERS "${EXTERNAL_FILTERS} DECODE")
  endif (H5_HAVE_FILTER_SZIP)
  if (HDF5_ENABLE_SZIP_ENCODING)
    set (H5_HAVE_SZIP_ENCODER 1)
    set (EXTERNAL_FILTERS "${EXTERNAL_FILTERS} ENCODE")
  endif (HDF5_ENABLE_SZIP_ENCODING)
endif (HDF5_ENABLE_SZIP_SUPPORT)
