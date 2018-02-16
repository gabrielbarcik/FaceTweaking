file(REMOVE_RECURSE
  "bsp_ex.pdb"
  "bsp_ex"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/bsp_ex.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
