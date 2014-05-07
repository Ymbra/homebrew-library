require 'formula'

class GitGerrit < Formula
  url 'https://github.com/Ymbra/git-gerrit/tarball/v0.4.0'
  homepage 'https://github.com/Ymbra/git-gerrit'
  md5 'f0bb311eeebdb5d35860a884147239d9'

  def install
    # install scripts in bin.
    bin.install Dir['bin/*']

    # install bash completions.
    (prefix + 'etc/bash_completion.d').install 'completion/git-gerrit-completion.bash'

  end

end
