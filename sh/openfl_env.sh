if [ "$build" = "" ]; then
	build=cpp
fi

function delete_openfl_exec()
{
	find bin/linux64/cpp/bin -type f | xargs file | grep 'ELF.*executable' | awk -F: '{print $1}' | xargs rm -f
}

if [ "$build" = "flash" ]; then
	echo "flash"
	function b() {rm -f bin/flash/bin/*.swf; openfl build flash -debug}
	function r() {google-chrome bin/flash/bin/test.html}
	function bb() {b; r}
elif [ "$build" = "cpp" ]; then
	echo "cpp"
	function b() {delete_openfl_exec; openfl build linux -debug}
	function r() {cd bin/linux64/cpp/bin; find . -type f | xargs file | grep 'ELF.*executable' | awk -F: '{print $1}' | while read line; do; eval $line; done; cd -}
	function bb() {b; r}
elif [ "$build" = "html5" ]; then
	echo "html5"
	function b() {rm -f bin/html5/bin/index.html; openfl build html5 -debug}
	function r() {(google-chrome-beta bin/html5/bin/index.html)}
	function bb() {b; r}
else
	echo "No build"
fi
