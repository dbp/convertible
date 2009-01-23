{- |
   Module     : Data.Convertible.Instances.Map
   Copyright  : Copyright (C) 2009 John Goerzen
   License    : LGPL

   Maintainer : John Goerzen <jgoerzen@complete.org>
   Stability  : provisional
   Portability: portable

Instances to convert between Map and association list.

Copyright (C) 2009 John Goerzen <jgoerzen@complete.org>

All rights reserved.

For license and copyright information, see the file COPYRIGHT

-}

module Data.Convertible.Instances.Map()
where

import Data.Convertible.Base

import qualified Data.Map as Map

instance Ord k => Convertible [(k, a)] (Map.Map k a) where
    safeConvert = return . Map.fromList
instance Convertible (Map.Map k a) [(k, a)] where
    safeConvert = return . Map.toList
