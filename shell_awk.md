﻿### awk
#### Modifiers for `print` Formats
```
printf "%s %s\n", "don't", "panic"
printf "%2$s %1$s\n", "panic", "don't"
```
- Minus
	- width 식별자 
	- left-justify 인수
- space
	- 양수 : space  우측에서 시작
	- 음수 : 마이너스 좌측에서 시작
- `
