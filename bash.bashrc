
clear
GREEN="\e[01;92m"
ENDCO="\e[0m"
BACKGREEN="\e[01;102;30m"

echo "
───────▄───▄
───▄█▄─█▀█▀█─▄█▄
  ▀▀████▄█▄████▀▀
───────▀█▀█▀
" | lolcat
echo -e "${GREEN}   AMIT ${ENDCO}${BACKGREEN} GAJARE ${ENDCO} "

## Prompt.

PROMPT_DIRTRIM=2
if [ "$(id -u)" = "0" ]; then
	PS1="\\[\\e[0;31m\\]\\w\\[\\e[0m\\] \\[\\e[0;97m\\]\\$\\[\\e[0m\\] "
else
	PS1="
\[\033[0;31m\]┌─[\[\033[1;34m\]Amit\[\033[1;33m\]@\[\033[1;36m\]termux\[\033[0;31m\]]─[\[\033[0;32m\]\w\[\033[0;31m\]]
\[\033[0;31m\]└──╼ \[\e[1;31m\]❯\[\e[1;34m\]❯\[\e[1;90m\]❯\[\033[0m\] "
fi
PS2='> '
PS3='> '
PS4='+ '
## Terminal title.
case "$TERM" in
	xterm*|rxvt*)
		if [ "$(id -u)" = "0" ]; then
			PS1="\\[\\e]0;termux (root): \\w\\a\\]$PS1"
		else
			PS1="\\[\\e]0;termux: \\w\\a\\]$PS1"
		fi
		;;
	*)
		;;
esac

