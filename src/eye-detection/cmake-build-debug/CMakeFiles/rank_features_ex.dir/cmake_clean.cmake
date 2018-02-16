file(REMOVE_RECURSE
  "rank_features_ex.pdb"
  "rank_features_ex"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/rank_features_ex.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
