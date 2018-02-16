file(REMOVE_RECURSE
  "file_to_code_ex.pdb"
  "file_to_code_ex"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/file_to_code_ex.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
