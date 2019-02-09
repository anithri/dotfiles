#
# startup file read in interactive login shells
#
# The following code helps us by optimizing the existing framework.
# This includes zcompile, zcompdump, etc.
#

(
  # Function to determine the need of a zcompile. If the .zwc file
  # does not exist, or the base file is newer, we need to compile.
  # These jobs are asynchronous, and will not impact the interactive shell
  zcompare() {
    if [[ -s ${1} && ( ! -s ${1}.zwc || ${1} -nt ${1}.zwc) ]]; then
      zcompile ${1}
    fi
  }

  zim_mods=${ZDOTDIR:-${HOME}}/.zim/modules
  setopt EXTENDED_GLOB

  # zcompile .zshrc
  zcompare ${ZDOTDIR:-${HOME}}/.zshrc

  # zcompile some light module init scripts
  zcompare ${zim_mods}/git/init.zsh
  zcompare ${zim_mods}/utility/init.zsh
  zcompare ${zim_mods}/pacman/init.zsh
  zcompare ${zim_mods}/spectrum/init.zsh
  zcompare ${zim_mods}/completion/init.zsh
  zcompare ${zim_mods}/fasd/init.zsh

  # zcompile all .zsh files in the custom module
  for file in ${zim_mods}/custom/**/^(README.md|*.zwc)(.); do
    zcompare ${file}
  done

  # zcompile all autoloaded functions
  for file in ${zim_mods}/**/functions/^(*.zwc)(.); do
    zcompare ${file}
  done

  # zsh-histery-substring-search
  zcompare ${zim_mods}/history-substring-search/external/zsh-history-substring-search.zsh
  

) &!

eval `keychain -Q --eval --agents ssh id_rsa cpp_amazon.pem id_rsa_codecommit pedwind_talia scottp_at_serenity_ed25519.pem`

