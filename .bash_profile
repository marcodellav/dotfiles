#For this to work as root in macOS, change root's shell to bash with
#sudo dscl . -change /Users/root UserShell /bin/sh /bin/bash

# Load dotfiles:
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#Git auto-complete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

#aws cli auto-complete
complete -C '/usr/local/bin/aws_completer' aws
export PATH=/usr/local/aws/bin:$PATH





# Setting PATH for Python 3.7
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH

