file(REMOVE_RECURSE
  "mlp_ex.pdb"
  "mlp_ex"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/mlp_ex.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
