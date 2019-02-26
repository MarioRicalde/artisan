# Wrapper to make the UX better for the tree command.
# Mnemonic: "tree"

alias tree='function treewrapper() { tree -ChFl --dirsfirst --sort=size $*; }; treewrapper' 

