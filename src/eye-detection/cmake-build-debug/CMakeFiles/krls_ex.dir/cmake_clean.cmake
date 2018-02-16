file(REMOVE_RECURSE
  "krls_ex.pdb"
  "krls_ex"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/krls_ex.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
