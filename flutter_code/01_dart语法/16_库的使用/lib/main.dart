import 'package:flutter/material.dart';
import 'utils/math_utils.dart' as MaUtils;
import 'utils/other_utils.dart' as OUtils;
import 'utils/my_utils.dart' as MyUtils show sum;

void main(List<String> args) {

  //编译报错：The name 'multiple' is defined in the libraries 'package:hello_flutter/utils/math_utils.dart' and
  // 'package:hello_flutter/utils/other_utils.dart'.
  // Try using 'as prefix' for one of the import directives,
  // or hiding the name from all but one of the imports.
//  print(multiple(1,3));

  print(MaUtils.multiple(1,3));
  print(OUtils.multiple(1,3));

  print(MyUtils.sum(1, 9));
//  print(MyUtils.multiple(1, 2));//The function 'multiple' isn't defined.
}





