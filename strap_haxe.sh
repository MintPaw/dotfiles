mkdir -p ~/tools/haxe/lib
mkdir -p ~/tools/haxe/libgit

libs=("openfl" "openfl-samples" "lime" "format" "hxcpp" "flixel" 
	"flixel-addons" "flixel-ui" "nape" "hscript")

libPaths=("https://github.com/openfl/openfl.git"
	"https://github.com/openfl/openfl-samples.git"
	"https://github.com/openfl/lime.git"
	"https://github.com/HaxeFoundation/format.git"
	"https://github.com/HaxeFoundation/hxcpp.git"
	"https://github.com/HaxeFlixel/flixel.git"
	"https://github.com/HaxeFlixel/flixel-addons.git"
	"https://github.com/HaxeFlixel/flixel-ui.git"
	"https://github.com/deltaluca/nape.git"
	"https://github.com/HaxeFoundation/hscript.git")

for ((i=0; i<${#libs[@]}; i++))
do
	echo ${libs[i]}

	if [ ! -d ~/tools/haxe/libgit/${libs[i]} ]
	then
		git clone --recursive ${libPaths[i]} ~/tools/haxe/libgit/${libs[i]}
	else
		(cd ~/tools/haxe/libgit/${libs[i]}; git pull --recurse-submodules)
	fi
	
	haxelib dev ${libs[i]} ~/tools/haxe/libgit/${libs[i]}
done

echo "Rebuilding."
(
	cd ~/tools/haxe/libgit/hxcpp/tools/hxcpp;
	haxe compile.hxml;
	cd ../../project; 
	neko build.n -DHXCPP_M64
)
