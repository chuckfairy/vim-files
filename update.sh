echo "Updating vim Plugins"

vim -c :PluginUpdate -c :qa


echo "Install YCM modules"

#cd ./bundle/YouCompleteMe;
./bundle/YouCompleteMe/install.py --clang-completer --ts-completer --cs-completer

