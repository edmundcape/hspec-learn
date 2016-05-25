module Paths_hspec_learn (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/edmundcape/Dropbox/Programming/Haskell.drop/hspec-learn/.stack-work/install/x86_64-osx/lts-5.18/7.10.3/bin"
libdir     = "/Users/edmundcape/Dropbox/Programming/Haskell.drop/hspec-learn/.stack-work/install/x86_64-osx/lts-5.18/7.10.3/lib/x86_64-osx-ghc-7.10.3/hspec-learn-0.1.0.0-GjyZh0gwClf772rSnihNBu"
datadir    = "/Users/edmundcape/Dropbox/Programming/Haskell.drop/hspec-learn/.stack-work/install/x86_64-osx/lts-5.18/7.10.3/share/x86_64-osx-ghc-7.10.3/hspec-learn-0.1.0.0"
libexecdir = "/Users/edmundcape/Dropbox/Programming/Haskell.drop/hspec-learn/.stack-work/install/x86_64-osx/lts-5.18/7.10.3/libexec"
sysconfdir = "/Users/edmundcape/Dropbox/Programming/Haskell.drop/hspec-learn/.stack-work/install/x86_64-osx/lts-5.18/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "hspec_learn_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "hspec_learn_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "hspec_learn_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "hspec_learn_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "hspec_learn_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
