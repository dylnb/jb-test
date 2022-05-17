{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_mynewbook (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/dylan/Desktop/mynewbook/.stack-work/install/aarch64-osx/efc84ad25806d7c6e4cab7fa70e6ee636720a6e26c09e0ef286d248ac3a6a471/8.10.7/bin"
libdir     = "/Users/dylan/Desktop/mynewbook/.stack-work/install/aarch64-osx/efc84ad25806d7c6e4cab7fa70e6ee636720a6e26c09e0ef286d248ac3a6a471/8.10.7/lib/aarch64-osx-ghc-8.10.7/mynewbook-0.1.0.0-F1U4ZTJpe5j4agn61sRp3v-helloworld"
dynlibdir  = "/Users/dylan/Desktop/mynewbook/.stack-work/install/aarch64-osx/efc84ad25806d7c6e4cab7fa70e6ee636720a6e26c09e0ef286d248ac3a6a471/8.10.7/lib/aarch64-osx-ghc-8.10.7"
datadir    = "/Users/dylan/Desktop/mynewbook/.stack-work/install/aarch64-osx/efc84ad25806d7c6e4cab7fa70e6ee636720a6e26c09e0ef286d248ac3a6a471/8.10.7/share/aarch64-osx-ghc-8.10.7/mynewbook-0.1.0.0"
libexecdir = "/Users/dylan/Desktop/mynewbook/.stack-work/install/aarch64-osx/efc84ad25806d7c6e4cab7fa70e6ee636720a6e26c09e0ef286d248ac3a6a471/8.10.7/libexec/aarch64-osx-ghc-8.10.7/mynewbook-0.1.0.0"
sysconfdir = "/Users/dylan/Desktop/mynewbook/.stack-work/install/aarch64-osx/efc84ad25806d7c6e4cab7fa70e6ee636720a6e26c09e0ef286d248ac3a6a471/8.10.7/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "mynewbook_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "mynewbook_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "mynewbook_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "mynewbook_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "mynewbook_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "mynewbook_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
