DOTFILES=$HOME/dotfiles
export ZSH=$HOME/.oh-my-zsh

# --------
# Plugins
# --------

# plugins=(git osx autojump brew history dirhistory nvm zsh-better-npm-completion zsh-autosuggestions)
plugins=(git osx autojump brew history dirhistory nvm)

# --------
# Mirrors
# --------
# export ELECTRON_MIRROR=https://npm.taobao.org/mirrors/electron/        # Electron
# export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/dist               # nvm
# export NVM_IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs         # nvm-iojs
# export PHANTOMJS_CDNURL=https://npm.taobao.org/dist/phantomjs          # phantomjs
# export SASS_BINARY_SITE=https://npm.taobao.org/mirrors/node-sass/      # node-sass
# export CHROMEDRIVER_CDNURL=http://npm.taobao.org/mirrors/chromedriver  # ChromeDriver
# export SELENIUM_CDNURL=http://npm.taobao.org/mirrorss/selenium         # Selenium


# --------
# Theme:
#   Bullet Train
#   https://github.com/caiogondim/bullet-train-oh-my-zsh-theme
# --------
ZSH_THEME="bullet-train"
export BULLETTRAIN_DIR_FG=black
export BULLETTRAIN_DIR_EXTENDED=2
export BULLETTRAIN_GIT_COLORIZE_DIRTY=true
export BULLETTRAIN_GIT_COLORIZE_DIRTY_COLOR=yellow
export BULLETTRAIN_GIT_BG=green
export BULLETTRAIN_GIT_EXTENDED=false
export BULLETTRAIN_EXEC_TIME_SHOW=true
export BULLETTRAIN_EXEC_TIME_ELAPSED=1
export BULLETTRAIN_EXEC_TIME_BG=cyan
# export BULLETTRAIN_TIME_BG=black
# export BULLETTRAIN_TIME_FG=black
export BULLETTRAIN_NVM_SHOW=true
export BULLETTRAIN_VIRTUALENV_SHOW=false

source $ZSH/oh-my-zsh.sh
