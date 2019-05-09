#!/usr/bin/env fish

set plugins yamlcpp yanlr yambi yawn yaypeg
set path 'Data/Errors'
set files list_element_outside.yaml multiple_errors.yaml

for file in $files

    printf '————————————————————————————————————————\n'
    printf '📄 %s\n' "$file"
    printf '————————————————————————————————————————\n'

    for plugin in $plugins
        printf '\n🔌 %s\n\n' "$plugin"
        kdb mount config.yaml user/tests/yaml "$plugin"
        cat "$path/$file" >(kdb file user/tests/yaml)
        kdb ls user/tests/yaml 2>&1 | pcre2grep -M 'Reason: ((?!Ingroup)(\n|.))*'
        rm (kdb file user/tests/yaml)
        kdb umount user/tests/yaml
    end
end
