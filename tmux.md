[Skip to content](https://gist.github.com/ryeonho/7005437#start-of-content)

[All gists](https://gist.github.com/discover)[Back to GitHub](https://github.com/)

[Sign in](https://gist.github.com/auth/github?return_to=https%3A%2F%2Fgist.github.com%2Fryeonho%2F7005437)[Sign up](https://gist.github.com/join?return_to=https%3A%2F%2Fgist.github.com%2Fryeonho%2F7005437&source=header-gist)

Instantly share code, notes, and snippets.

# [![@ryeonho](https://avatars2.githubusercontent.com/u/95286?s=52&v=4)](https://gist.github.com/ryeonho)[ryeonho](https://gist.github.com/ryeonho)/**[tmux-cheatsheet.markdown](https://gist.github.com/ryeonho/7005437)**

forked from  [MohamedAlaa/tmux-cheatsheet.markdown](https://gist.github.com/MohamedAlaa/2961058)

Last active  2 months ago

-   [Star](https://gist.github.com/login?return_to=https%3A%2F%2Fgist.github.com%2Fryeonho%2F7005437)[4](https://gist.github.com/ryeonho/7005437/stargazers)
-   [Fork](https://gist.github.com/login?return_to=https%3A%2F%2Fgist.github.com%2Fryeonho%2F7005437)[3](https://gist.github.com/ryeonho/7005437/forks)

[Code](https://gist.github.com/ryeonho/7005437) [Revisions  20](https://gist.github.com/ryeonho/7005437/revisions) [Stars  4](https://gist.github.com/ryeonho/7005437/stargazers) [Forks  3](https://gist.github.com/ryeonho/7005437/forks)

Embed

[Download ZIP](https://gist.github.com/ryeonho/7005437/archive/1e44f403e17138cdda8f530699dfe13a51445692.zip)

[Raw](https://gist.github.com/ryeonho/7005437/raw/1e44f403e17138cdda8f530699dfe13a51445692/tmux-cheatsheet.markdown)

[**tmux-cheatsheet.markdown**](https://gist.github.com/ryeonho/7005437#file-tmux-cheatsheet-markdown)

# [](https://gist.github.com/ryeonho/7005437#tmux-%EB%8B%A8%EC%B6%95%ED%82%A4--%EC%B9%98%ED%8A%B8%EC%8B%9C%ED%8A%B8)tmux 단축키 & 치트시트

실행하기:

```
tmux

```

세션명을 주면서 시작하기:

```
tmux new -s myname

```

붙이기:

```
tmux a  #  (또는 at이나 attach)

```

특정 세션에 붙이기:

```
tmux a -t myname

```

세션 일람:

```
tmux ls

```

세션 강제종료:

```
tmux kill-session -t myname

```

tmux 내에서 머릿문자'ctrl+b'를 누르고(전 ctrl+a로 변경해서 사용중)

## [](https://gist.github.com/ryeonho/7005437#%EC%84%B8%EC%85%98)세션

```
:new<CR>  새로운 세션
s  세션 리스트
$  세션에 이름 정하기

```

## [](https://gist.github.com/ryeonho/7005437#%EC%9C%88%EB%8F%84%EC%9A%B0-%ED%83%AD)윈도우 (탭)

```
c  새 윈도우
w  윈도우 리스
f  윈도우 찾기
,  윈도우에 이름 붙이기
&  윈도우 강제 닫기

```

## [](https://gist.github.com/ryeonho/7005437#%ED%8C%A8%EB%84%90-%ED%99%94%EB%A9%B4-%EA%B5%AC%EB%B6%84)패널 (화면 구분)

```
%  세로로 나누기
"  가로로 나누기

o  패널 바꾸기
q  패널 번호 보여주기
x  패널 강제종료
+  패널을 새 윈도우로 이동 (마우스로 드래그해서 선택하기 위해서 라든지)
-  윈도우에서 패널로 복귀
⍽  스페이스 - 레이아웃을 토글
{  패널을 욎쪽으로 이동
}  패널을 오른쪽으로 이동

```

## [](https://gist.github.com/ryeonho/7005437#%ED%8C%A8%EB%84%90-%ED%81%AC%EA%B8%B0-%EC%A1%B0%EC%A0%88%ED%95%98%EA%B8%B0)패널 크기 조절하기

레이아웃이 자동으로 정해주는 크기가 마음에 안들 때 패널크기를 조절하기위해서 사용합니다. 제 개인적으로는 거의 안씁니다만 알아두면 편리합니다. 여기 패널크기를 조절하는 기본적인 키들입니다.

```
: resize-pane --- 아래쪽로 조절 (저는 -D가 아래로. 원문에는 아무것도 적지 않으면 아래로 라고 하네요)
: resize-pane -U --- 위쪽로 조절
: resize-pane -L --- 왼쪽으로 조절
: resize-pane -R --- 오른쪽으로 조절
: resize-pane 20 --- 아래로 20칸 조절 (저는 -D가 아래로. 원문에는 아무것도 적지 않으면 아래로 라고 하네요. )
: resize-pane -U 20 --- 위로 20칸 조절
: resize-pane -L 20 --- 왼쪽으로 20칸 조절
: resize-pane -R 20 --- 오른쪽으로 20칸 조절
: resize-pane -t 2 20 --- 2번 패널 아래로 20칸 조절 (저는 -D가 아래로. )
: resize-pane -t 2 -L 20 --- 2번 패널 왼쪽으로 20칸 조절

```

## [](https://gist.github.com/ryeonho/7005437#%EC%B9%B4%ED%94%BC-%EB%AA%A8%EB%93%9C)카피 모드:

접두문자(ctrl+b)를 누르고 [ 를 누르면 카피모드가 됩니다. 그러면 커서키를 이용해서 화면을 이리저리 다니는 것이 가능합니다. 기본적으로 방향키로 지정되어 있습니다만 설정 파일을 이용해서 vim키로 변경을하면 윈도우나 패널 사이를 이동하기 위해서 손의 위치를 움직일 필요가 없어집니다.tmux 버퍼를 조작하기 위한 vi모드가 있습니다. 활성화 시키려면 아래의 라인을 .tmux.conf에 기술합니다.

```
setw -g mode-keys vi

```

이렇게 하면 h, j, k, l을 이용해서 버퍼에서 이동을 할 수 있게 됩니다.

카피모드에서 나오려면 엔터를 누르면 됩니다. 한 글자 단위로 이동하는 것은 별로 효율적이지 않습니다.vi 모드를 활성화했기 때문에 여러가지 편리한 키들도 활성화 되어 있습니다. 예를 들면 "w" 키를 이용해서 다음 단어로 이동한다거나 "b"를 누르면 앞의 단어로 이동합니다. "f"키를 사용해서 그 줄의 어떤 문자의 의치로 점프할 수도 있고 "F"를 이용해서 그 줄의 앞 방향으로 어떤 문자의 위치로 점프할 수 있습니다.

```
   기능                     vi             emacs
   Back to indentation     ^              M-m
   Clear selection         Escape         C-g
   Copy selection          Enter          M-w
   Cursor down             j              Down
   Cursor left             h              Left
   Cursor right            l              Right
   Cursor to bottom line   L
   Cursor to middle line   M              M-r
   Cursor to top line      H              M-R
   Cursor up               k              Up
   Delete entire line      d              C-u
   Delete to end of line   D              C-k
   End of line             $              C-e
   Goto line               :              g
   Half page down          C-d            M-Down
   Half page up            C-u            M-Up
   Next page               C-f            Page down
   Next word               w              M-f
   Paste buffer            p              C-y
   Previous page           C-b            Page up
   Previous word           b              M-b
   Quit mode               q              Escape
   Scroll down             C-Down or J    C-Down
   Scroll up               C-Up or K      C-Up
   Search again            n              n
   Search backward         ?              C-r
   Search forward          /              C-s
   Start of line           0              C-a
   Start selection         Space          C-Space
   Transpose chars                        C-t

```

## [](https://gist.github.com/ryeonho/7005437#%EA%B8%B0%ED%83%80)기타

```
d  세션과 터미널 분리 detach
t  전체화면 시계
?  단축키 일람
:  프롬프트

```

## [](https://gist.github.com/ryeonho/7005437#%EC%84%A4%EC%A0%95-%EC%98%B5%EC%85%98)설정 옵션

```
# 마우스 support - 마우스를 사용하려면 on으로 해주시면 됩니다.
* setw -g mode-mouse off  마우스 사용
* set -g mouse-select-pane off  마우스로 패널 선택
* set -g mouse-resize-pane off  마우스로 패널 리사이즈
* set -g mouse-select-window off   마우스로 윈도우 선택

# 터미널 모드를 256컬러
set -g default-terminal "screen-256color"

# 활동 알림 활성화
setw -g monitor-activity on
set -g visual-activity on

# 위도우 리스트를 중앙정렬
set -g status-justify centre

# 패널을 최대화했다가 다시 되돌리기
unbind Up bind Up new-window -d -n tmp \; swap-pane -s tmp.1 \; select-window -t tmp
unbind Down
bind Down last-window \; swap-pane -s tmp.1 \; kill-window -t tmp

```

## [](https://gist.github.com/ryeonho/7005437#%EC%B0%B8%EA%B3%A0%EC%9E%90%EB%A3%8C)참고자료:

-   [tmux: Productive Mouse-Free Development](http://pragprog.com/book/bhtmux/tmux)
-   [How to reorder windows](http://superuser.com/questions/343572/tmux-how-do-i-reorder-my-windows)
-   [cheat sheet](http://cheat.errtheblog.com/s/tmux/)

## [](https://gist.github.com/ryeonho/7005437#%EB%85%B8%ED%8A%B8)노트:

## [](https://gist.github.com/ryeonho/7005437#todo)TODO:

[Sign up for free](https://gist.github.com/join?source=comment-gist)  **to join this conversation on GitHub**. Already have an account?  [Sign in to comment](https://gist.github.com/login?return_to=https%3A%2F%2Fgist.github.com%2Fryeonho%2F7005437)

-   © 2020 GitHub, Inc.
-   [Terms](https://github.com/site/terms)
-   [Privacy](https://github.com/site/privacy)
-   [Security](https://github.com/security)
-   [Status](https://githubstatus.com/)
-   [Help](https://docs.github.com/)

[](https://github.com/ "GitHub")

-   [Contact GitHub](https://github.com/contact)
-   [Pricing](https://github.com/pricing)
-   [API](https://docs.github.com/)
-   [Training](https://training.github.com/)
-   [Blog](https://github.blog/)
-   [About](https://github.com/about)
