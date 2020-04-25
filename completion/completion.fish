# fish completions for base16-manager

# Get description of commands listed in --help
set -l base16_manager_commands_help (base16-manager --help | sed 1,2d | sed 's/   */,/g' | rev | cut -s -d ',' -f 1 | rev)
set -l base16_manager_commands (base16-manager usage-short)
set -l i 1
for command in $base16_manager_commands
    complete -f -c base16-manager -n "not __fish_seen_subcommand_from $base16_manager_commands" -a "$command" -d "$base16_manager_commands_help[$i]"
    set -l i (math $i + 1)
end

# Never complete with filename
complete -f -c base16-manager

complete -f -c base16-manager -n "__fish_seen_subcommand_from set; and test (count (commandline -opc)) -eq 2" -a "(base16-manager list-themes)"
complete -f -c base16-manager -n "__fish_seen_subcommand_from install; and test (count (commandline -opc)) -eq 2" -a "(base16-manager list-installable)"
complete -f -c base16-manager -n "__fish_seen_subcommand_from uninstall; and test (count (commandline -opc)) -eq 2" -a "(base16-manager list)"
