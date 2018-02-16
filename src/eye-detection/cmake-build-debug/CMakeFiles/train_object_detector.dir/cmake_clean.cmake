file(REMOVE_RECURSE
  "train_object_detector.pdb"
  "train_object_detector"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/train_object_detector.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
