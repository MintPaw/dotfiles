rsync -av  --exclude='.git*' --exclude='strap*' ~/dotfiles/ ~

paths=(".oh-my-zsh"
	".vim/bundle/vaxe"
	".vim/bundle/ctrlp"
	".vim/bundle/nerdtree"
	"tools/imgur-screenshot"
	".vim/bundle/gundo"
	".vim/bundle/vitality"
	".vim/bundle/unicode"
	".vim/bundle/vim-multiple-cursors"
	".vim/bundle/selection"
	".vim/bundle/crunch"
	".vim/bundle/tabular"
	".vim/bundle/semantic-highlight")
	
gitUrls=("https://github.com/robbyrussell/oh-my-zsh.git"
	"https://github.com/kien/ctrlp.vim.git"
	"https://github.com/jdonaldson/vaxe.git"
	"https://github.com/scrooloose/nerdtree.git"
	"https://github.com/jomo/imgur-screenshot"
	"https://github.com/sjl/gundo.vim.git"
	"https://github.com/sjl/vitality.vim.git"
	"https://github.com/chrisbra/unicode.vim.git"
	"https://github.com/terryma/vim-multiple-cursors.git"
	"https://github.com/arecarn/selection.vim.git"
	"https://github.com/arecarn/crunch.vim.git"
	"https://github.com/godlygeek/tabular.git"
	"https://github.com/jaxbot/semantic-highlight.vim.git")

for ((i=0; i<${#paths[@]}; i++))
do
	echo ${paths[i]}

	if [ ! -d ~/${paths[i]} ]
	then
		git clone --recursive ${gitUrls[i]} ~/${paths[i]}
	else
		(cd ~/${paths[i]}; git pull --recurse-submodules)
	fi
	
done
