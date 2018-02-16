file(REMOVE_RECURSE
  "custom_trainer_ex.pdb"
  "custom_trainer_ex"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/custom_trainer_ex.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
