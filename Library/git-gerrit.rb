require 'formula'

class GitGerrit < Formula
  url 'https://github.com/Ymbra/git-gerrit/tarball/v0.4.0'
  homepage 'https://github.com/Ymbra/git-gerrit'
  sha1 'ee0b8edae7bf11469901d4b556f67bfd32dbda65'

  def install
    # install scripts in bin.
    bin.install Dir['bin/*']

    # install bash completions.
    (prefix + 'etc/bash_completion.d').install 'completion/git-gerrit-completion.bash'

  end

end
