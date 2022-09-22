
set -x SHELL /opt/homebrew/bin/fish

if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (/opt/homebrew/bin/brew shellenv)

    set -g theme_display_git_default_branch yes
    set -g theme_color_scheme dark

    set -Ux fish_user_paths $HOME/.anyenv/bin $fish_user_paths
    source (anyenv init -|psub)
    source (direnv hook fish |psub)

    set -g GHQ_SELECTOR fzf
    bind \cg __ghq_repository_search

    source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

    set -gx PATH $PATH $HOME/.krew/bin
end
