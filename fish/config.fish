# For configs that I don't want in my public git (ie work stuff and stuff that changes across computers)
if test -e ~/.config/fish/private_config.fish
  source   ~/.config/fish/private_config.fish
end

# various paths
set --export PATH "$HOME/bin"               \
                  "/usr/local/bin"          \
                  "$HOME/.rbenv/shims"      \
                  "$HOME/.cabal/bin"        \
                  $PATH

# Rails cucumber integration looks for this env var to decide how to display output
set --export CUCUMBER_FORMAT pretty

alias strip "ruby -ne 'print \$_.strip'" # should make this a real function

# Not really using this anymore, started using 1password, which is okay, but will leave this anyway
set -x she_told_me_she_had_a_god_complex_i_told_her_i_was_an_atheist ~/Dropbox/passwords

# Custom kill and foreground commands since I work with a lot of background jobs
for i in (seq 30)
  eval "function $i
          fg %$i
        end"
  eval "function k$i
          kill -9 %$i
        end"
end

# Load ruby. Interface is less helpful than rbenv
# but Brixen says it works with rbx in ways that rbenv's assumptions won't let it
source /usr/local/share/chruby/chruby.fish

# Don't print a greeting when I start the shell
set --erase fish_greeting