/// События для изменение состояния приложения.
/// Такие как нажатие кнопок цифр, операций и т.д.
library events;

import 'package:flutter/services.dart';
import 'package:calculator/calculator.dart';
import 'dart:math';

part 'view_event.dart';
part 'digit.dart';
part 'backspace.dart';
part 'clear.dart';
part 'comma.dart';
part 'equals.dart';

part 'operations/division.dart';
part 'operations/minus.dart';
part 'operations/multiply.dart';
part 'operations/plus.dart';
part 'operations/squared.dart';
part 'operations/square_root.dart';

part 'memory/clear.dart';
part 'memory/minus.dart';
part 'memory/plus.dart';
part 'memory/retrieve.dart';

part 'layouts/horizontal.dart';
part 'layouts/vertical.dart';

