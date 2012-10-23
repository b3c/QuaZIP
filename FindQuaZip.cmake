find_package(Qt4)
find_path(QuaZip_INCLUDE_DIR quazip.h ${CMAKE_INSTALL_PREFIX}/include/quazip ${CMAKE_INSTALL_PREFIX}/include /usr/include/quazip /usr/local/include/quazip ${QT_INCLUDE_DIR}/quazip ${QT_INCLUDE_DIR} ${QuaZIP_SOURCE_DIR}/include/quazip ${QuaZIP_SOURCE_DIR}/quazip ${QuaZIP_SOURCE_DIR}/include)
find_library(QuaZip_LIBRARY NAMES quazip PATHS ${CMAKE_INSTALL_PREFIX}/lib64 ${CMAKE_INSTALL_PREFIX}/lib ${CMAKE_INSTALL_PREFIX}/Library/Frameworks ${QuaZIP_DIR}/lib64 ${QuaZIP_DIR}/lib ${QuaZIP_DIR}/quazip/Debug ${QuaZIP_DIR}/quazip/Relase ${QuaZIP_DIR})
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(quazip DEFAULT_MSG QuaZip_LIBRARY QuaZip_INCLUDE_DIR)
set(QuaZip_LIBRARIES ${QuaZip_LIBRARY})

get_filename_component(QuaZip_LIBRARY_DIR ${QuaZip_LIBRARY} PATH)

include_directories("${QuaZip_INCLUDE_DIR}/../zlib/")
# Add include directories needed to use QtSOAP.
INCLUDE_DIRECTORIES(${QuaZip_INCLUDE_DIR})

set(QuaZip_LIBRARY_DIR "${QuaZip_LIBRARY_DIR}/../")
LINK_DIRECTORIES(${QuaZip_LIBRARY_DIR})

mark_as_advanced(QuaZip_LIBRARY QuaZip_INCLUDE_DIR)
