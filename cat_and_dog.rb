def include_cat_and_dog?(str)
  if str.include?("cat") && str.include?("dog")
    puts true
  else
    puts false
  end
end

include_cat_and_dog?(catdog)