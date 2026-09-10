# Questo file viene incluso nativamente da CMake all'inizio del progetto

# Definiamo una funzione pulita che contiene le tue due righe standard
function(aggiungi_target_pacchetto)

  # Components ignored in both ZIP and WIX generators
  set(COMPONENTS_IGNORE Debuginfo Server_Scripts SqlBench Test Embedded  plugin-hashicorp-key-management)

  ADD_CUSTOM_TARGET(
    cicciosoft_win_package_zip
    COMMAND ${CMAKE_CPACK_COMMAND} ${CPACK_CONFIG_PARAM} -D "COMPONENTS_IGNORE=${COMPONENTS_IGNORE}"
    WORKING_DIRECTORY "${CMAKE_BINARY_DIR}"
  )

  SET_TARGET_PROPERTIES(
    cicciosoft_win_package_zip
	PROPERTIES
	EXCLUDE_FROM_ALL TRUE
	EXCLUDE_FROM_DEFAULT_BUILD TRUE)

endfunction()

# Diciamo a CMake di eseguire questa funzione non appena ha finito di leggere tutto il progetto
cmake_language(DEFER CALL aggiungi_target_pacchetto)
