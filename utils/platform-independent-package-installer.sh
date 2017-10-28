# $Universal_home/Downloads/Projects/"





# paci         - install one or more packages
# pacu         - upgrade all packages to their newest version
# pacr         - uninstall one or more packages
# pacs         - search for a package using one or more keywords
# pacinfo      - show information about a package
# pacinstalled - show if a package is installed
# paca         - list all installed packages
# paclo        - list all packages which are orphaned
# pacdnc       - delete all not currently installed package files
# pacfiles        - list all files installed by a given package
# pacwhoownsit - show what package owns a given file
# paclcf       - list config files installed by a given package
# pacexpl      - mark one or more packages as explicitly installed 
# pacimpl      - mark one or more packages as non explicitly installed

if [ -e "/usr/bin/apt-get" ] ; then # Apt-based distros (Debian, Ubuntu, etc.)
  aptget="/usr/bin/apt-get"
  sudoaptget="sudo $aptget"
  aptcache="/usr/bin/apt-cache"
  dpkg="/usr/bin/dpkg"
  alias paci="$sudoaptget install"
  alias pacu="$sudoaptget update"
  alias pacs="$aptcache search"
  alias pacinfo="$aptcache show"
  alias pacinstalled="$aptcache policy"
  alias paca="$dpkg --get-selections"
  alias pacfiles="$dpkg -L"
elif [ -e "/usr/bin/pacman" ] ; then # Arch Linux
  pacman="/usr/bin/pacman"
  sudopacman="sudo $pacman"
  alias paci="$pacman -S"
  alias pacu="$pacman -Syu"
  alias pacr="$sudopacman -Rns"
  alias pacs="$pacman -Ss"
  alias pacinfo="$pacman -Si"
  alias paca="$pacman -Q"
  alias paclo="$pacman -Qdt"
  alias pacdnc="$sudopacman -Scc"
  alias pacfiles="$pacman -Ql"
  alias pacexpl="$pacman -D --asexp"
  alias pacimpl="$pacman -D --asdep"
elif [ -e "/usr/bin/dnf" ] ; then # RPM-based distros
# elif [ -e "/usr/bin/yum" ] ; then # RPM-based distros
  yum="/usr/bin/dnf"
  # yum="/usr/bin/yum"
  sudoyum="sudo $yum"
  repoquery="/usr/bin/repoquery"
  alias paci="$sudoyum install"
  alias pacu="$sudoyum update"
  alias pacr="$sudoyum remove"
  alias pacs="$yum search"
  alias pacfiles="$repoquery -lq --installed"
  alias pacwhoownsit="$yum whatprovides"
  alias pacinfo="$yum info"
  alias paclfc="$yum -qc"
  alias paccheckforupdates="$sudoyum list updates"
elif [ -e "/usr/local/bin/brew" ] ; then # homebrew
  brew="/usr/local/bin/brew"
  alias paci="$brew install"
  alias pacu="$brew update"
  alias pacup="$brew upgrade"
  alias pacs="$brew search"
  alias pacr="$brew uninstall"
fi