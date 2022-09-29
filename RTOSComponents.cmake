# Add library cpp files

if (NOT DEFINED RTOS_COMPONENTS_DIR)
    set(RTOS_COMPONENTS_DIR "${CMAKE_CURRENT_LIST_DIR}/lib/RtosComponents")
endif()

add_library(RTOSComponents STATIC)
target_sources(RTOSComponents PUBLIC
    ${RTOS_COMPONENTS_DIR}/src/AgentInterface.cpp
    ${RTOS_COMPONENTS_DIR}/src/BlinkAgent.cpp
    ${RTOS_COMPONENTS_DIR}/src/WatchdogBlinkAgent.cpp
    ${RTOS_COMPONENTS_DIR}/src/RGBLEDAgent.cpp
    ${RTOS_COMPONENTS_DIR}/src/RGBpwm.cpp
    ${RTOS_COMPONENTS_DIR}/src/ColorUtils.cpp
)

# Add include directory
target_include_directories(RTOSComponents PUBLIC 
	${RTOS_COMPONENTS_DIR}/src
)

# Add the standard library to the build
target_link_libraries(RTOSComponents PUBLIC pico_stdlib CMSIS_FREERTOS_FILES hardware_pwm)

