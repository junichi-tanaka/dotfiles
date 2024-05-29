
set -x SHELL /opt/homebrew/bin/fish

if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (/opt/homebrew/bin/brew shellenv)

    set -g theme_display_git_default_branch yes
    set -g theme_color_scheme dark

    set -g GHQ_SELECTOR fzf
    bind \cg __ghq_repository_search

    # anyenv
    fish_add_path $HOME/.anyenv/bin
    source (anyenv init -|psub)

    # direnv
    source (direnv hook fish |psub)

    # google cloud sdk
    source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
    set -gx USE_GKE_GCLOUD_AUTH_PLUGIN True

    # docker
    #set -gx DOCKER_DEFAULT_PLATFORM linux/$(arch)

    fish_add_path /opt/homebrew/opt/grep/libexec/gnubin
    fish_add_path /opt/homebrew/opt/mysql-client/bin
    fish_add_path $HOME/.rd/bin
    fish_add_path $HOME/.krew/bin

    # OpenSSL@3
    set -gx LDFLAGS "-L/opt/homebrew/opt/openssl@3/lib"
    set -gx CPPFLAGS "-I/opt/homebrew/opt/openssl@3/include"
    set -gx OPENSSL_ROOT_DIR /opt/homebrew/opt/openssl@3

    # asdf
    source /opt/homebrew/opt/asdf/libexec/asdf.fish

    # php8.2
    #fish_add_path /opt/homebrew/opt/php@8.2/bin
    #fish_add_path /opt/homebrew/opt/php@8.2/sbin
    #set -gx LDFLAGS "-L/opt/homebrew/opt/php@8.2/lib"
    #set -gx CPPFLAGS "-I/opt/homebrew/opt/php@8.2/include"
end
