
SHELL=/bin/zsh

list_All_InstalledCompletions:
	locate --regex 'zsh.*\/_{1}[A-Za-z0-9]\w*$' | xargs -0 grep -HPo '^#(compdef)|(autoload)\s\K.*' > completionFilelist

completion_function_tags:
	locate --regex 'zsh.*\/_{1}[a-z0-9]\w*' |\
	xargs grep --files-with-matches -P '\A#[^c]'|\
	ctags -L - -f - --extras=\* --language-force=sh --sh-kinds=\*| sed '/kind:function/d ;s/kind:file\|F/kind:function/' > tags

compile:
	zsh -n _* && zcompile compiled _*

clean:
	rm -f compiled tags
