require 'formula'

class GitGerrit < Formula
  url 'https://github.com/Ymbra/git-gerrit/tarball/v0.4.0'
  homepage 'https://github.com/Ymbra/git-gerrit'
  md5 '3289ad86d22c3422701361a639d67573'

  def install
    # install scripts in bin.
    bin.install Dir['bin/*']

    # install bash completions.
    (prefix + 'etc/bash_completion.d').install 'completion/git-gerrit-completion.bash'

  end

end
