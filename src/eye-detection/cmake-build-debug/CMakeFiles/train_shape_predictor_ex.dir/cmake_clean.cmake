file(REMOVE_RECURSE
  "train_shape_predictor_ex.pdb"
  "train_shape_predictor_ex"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/train_shape_predictor_ex.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
