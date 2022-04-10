process_folder() {
    local in_glob=$1
    local out_dir=$2
    mkdir -p $out_dir
    for f in $in_glob ; do
        if [ -f "$f" ] ; then
            local xbase=${f##*/}
            local xpref=${xbase%.*}
            echo "processing $f"
            cat $f | grep -v "#include " | gcc -E - -o - | grep -v "# " > $out_dir/${xpref}_preprocessed.h
        fi
    done;
}

rm -rf $out_dir
process_folder './godot-headers/*.h' './preprocessed'
process_folder './godot-headers/android/*.h' './preprocessed/android'
process_folder './godot-headers/arvr/*.h' './preprocessed/arvr'
process_folder './godot-headers/gdnative/*.h' './preprocessed/gdnative'
process_folder './godot-headers/nativescript/*.h' './preprocessed/nativescript'
process_folder './godot-headers/net/*.h' './preprocessed/net'
process_folder './godot-headers/pluginscript/*.h' './preprocessed/pluginscript'
process_folder './godot-headers/videodecoder/*.h' './preprocessed/videodecoder'

fd --search-path ./preprocessed -e h -X awk 1 > gdnative_preprocessed.h
