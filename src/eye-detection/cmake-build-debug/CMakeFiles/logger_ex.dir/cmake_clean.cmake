file(REMOVE_RECURSE
  "logger_ex.pdb"
  "logger_ex"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/logger_ex.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
