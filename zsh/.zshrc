export PATH="/opt/homebrew/bin:$PATH"
# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/owainwilliams/.zsh/completions:"* ]]; then export FPATH="/Users/owainwilliams/.zsh/completions:$FPATH"; fi
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# fnm
FNM_PATH="/Users/owainwilliams/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/owainwilliams/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi

eval "$(fnm env --use-on-cd --version-file-strategy=recursive --resolve-engines --corepack-enabled --shell zsh)"
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/amro.omp.json)"

alias vim=nvim
alias vi=nvim
alias lg=lazygit
alias ls=eza
alias ll=eza\ -ll
alias la=eza\ -la
alias csp="cd ~ && ./cloud-sql-proxy --port 5433 --auto-iam-authn bolventor-dev-b586:europe-west2:main-primary-400d4289-clone"
alias "zshrc"="vim ~/.zshrc"
alias "vimconf"="vim ~/.config/nvim"
alias y=yazi
alias v=nvim
alias dev="pnpm dev"
alias nuke="cd ~/bolventor && find apps packages -maxdepth 2 -type d -name "node_modules" -exec rm -rf {} \; 2>/dev/null && pnpm i && pnpm build && cd api && pnpm prisma generate && pnpm prisma migrate reset"
alias nukeforce="cd ~/bolventor && find apps packages -maxdepth 2 -type d -name "node_modules" -exec rm -rf {} \; 2>/dev/null && pnpm i && turbo run build --go-fallback --force && cd api && pnpm prisma generate && pnpm prisma migrate reset"
alias c=clear

# pnpm
export PNPM_HOME="/Users/owainwilliams/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

PATH=~/.console-ninja/.bin:$PATH
export DEBUG_PRINT_LIMIT=100000000

eval "$(pyenv init -)"
. "/Users/owainwilliams/.deno/env"

# yazi config
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
eval "$(zoxide init --cmd cd zsh)"

# Custom Environment Variables
export EDITOR=nvim
export PUBSUB_EMULATOR_HOST=localhost:8085
export PUBSUB_PROJECT_ID=bolventor-dev-b586
export PUBSUB_ENDPOINT=localhost:8085

# Load nvim environment variables
if [ -f ~/.config/nvim/.env ]; then
  set -a
  source ~/.config/nvim/.env
  set +a
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/owainwilliams/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/owainwilliams/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/owainwilliams/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/owainwilliams/google-cloud-sdk/completion.zsh.inc'; fi
