file(REMOVE_RECURSE
  "sequence_labeler_ex.pdb"
  "sequence_labeler_ex"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/sequence_labeler_ex.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
