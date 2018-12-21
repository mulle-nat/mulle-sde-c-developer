if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()


include( AllLoadC)
include( StartupC)

include( ExecutableAuxC OPTIONAL)

if( ALL_LOAD_DEPENDENCY_LIBRARIES)
   CreateForceAllLoadList( ALL_LOAD_DEPENDENCY_LIBRARIES FORCE_ALL_LOAD_DEPENDENCY_LIBRARIES)

   if( NOT EXECUTABLE_LIBRARY_LIST)
      set( EXECUTABLE_LIBRARY_LIST
         ${FORCE_ALL_LOAD_DEPENDENCY_LIBRARIES}
         ${DEPENDENCY_LIBRARIES}
         ${OPTIONAL_DEPENDENCY_LIBRARIES}
         ${OS_SPECIFIC_LIBRARIES}
         ${STARTUP_LIBRARY}
      )
   endif()

endif()



