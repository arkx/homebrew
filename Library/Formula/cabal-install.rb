require 'formula'

class CabalInstall < Formula
  homepage 'http://www.haskell.org/haskellwiki/Cabal-Install'
  url 'http://hackage.haskell.org/packages/archive/cabal-install/1.16.0.2/cabal-install-1.16.0.2.tar.gz'
  sha1 'd85cba298302b9c426fedd6d8e4c892343ca70ea'

  depends_on 'ghc'

  def install
    ENV['PREFIX'] = "#{prefix}"
    ENV['VERBOSE'] = ''
    system "sh bootstrap.sh"

    (prefix+'etc/bash_completion.d').install 'bash-completion/cabal'
  end
end
