#!/usr/bin/env fish

set plugins yamlcpp yanlr yaypeg yawn yambi
set path 'Data/Errors'
set files list_element_outside.yaml

for file in $files
    printf '📄 %s\n\n' "$file"

    for plugin in $plugins
        printf '\n🔌 %s\n\n' "$plugin"
        kdb mount config.yaml user/tests/yaml "$plugin"
        cat "$path/$file" >(kdb file user/tests/yaml)
        kdb ls user/tests/yaml 2>&1 | grep 'Reason: '
        reset_kdb >/dev/null
    end
end
