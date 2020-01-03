set -x PATH $PATH /usr/local/sbin/ (go env GOPATH)/bin
set -x ANDROID_SDK_ROOT /usr/local/share/android-sdk
set -x ANDROID_NDK_HOME /usr/local/share/android-ndk
set -x GOPATH (go env GOPATH)


# Define alias in shell
alias p4 "proxychains4"
alias cpd "pwd | pbcopy"
alias imadmin "sudo chown -R (whoami):admin ./"
alias brew3tap "brew update & brew upgrade & brew cleanup"
alias p4brew3tap "p4 brew update & p4 brew upgrade & brew cleanup"
alias showserialport "ls /dev/{tty,cu}.*"

# config
alias fishconfig "open ~/.config/fish/config.fish"
alias p4config "open /usr/local/etc/proxychains.conf"
alias sshhosts "open ~/.ssh/known_hosts"
alias sshpub "cat ~/.ssh/id_rsa.pub"
alias gradleconfig "open $HOME/.gradle/gradle.properties"

# git
alias bname "git rev-parse --abbrev-ref HEAD"
alias gitlogsincelast "git log (git describe --tags --abbrev=0)..HEAD --oneline"
alias gitlogsincelastonlymessage "git log (git describe --tags --abbrev=0)..HEAD --oneline --format=%B"

# system
alias showfile "defaults write com.apple.finder AppleShowAllFiles -bool true;"
alias hidefile "defaults write com.apple.finder AppleShowAllFiles -bool false;"

function vs 
    open $argv -a "Visual Studio Code" 
end

function ws 
    open $argv -a "WebStorm" 
end

function gl 
    open $argv -a "GoLand" 
end

function as 
    open $argv -a "Android Studio" 
end
