{-# LANGUAGE TypeFamilies, MagicHash #-}
module GHC.Int.Generics where

import GHC.Generics
import GHC.Int

data C_Int8
data D_Int8

instance Datatype D_Int8 where
  datatypeName _ = "Int8"
  moduleName   _ = "GHC.Int8"
instance Constructor C_Int8 where
  conName _ = ""

instance Generic Int8 where
  type Rep Int8 = D1 D_Int8 (C1 C_Int8 (S1 NoSelector (Rec0 Int8)))
  from x = M1 (M1 (M1 (K1 x)))
  to (M1 (M1 (M1 (K1 x)))) = x

data C_Int16
data D_Int16

instance Datatype D_Int16 where
  datatypeName _ = "Int16"
  moduleName   _ = "GHC.Int16"
instance Constructor C_Int16 where
  conName _ = ""

instance Generic Int16 where
  type Rep Int16 = D1 D_Int16 (C1 C_Int16 (S1 NoSelector (Rec0 Int16)))
  from x = M1 (M1 (M1 (K1 x)))
  to (M1 (M1 (M1 (K1 x)))) = x

data C_Int32
data D_Int32

instance Datatype D_Int32 where
  datatypeName _ = "Int32"
  moduleName   _ = "GHC.Int32"
instance Constructor C_Int32 where
  conName _ = ""

instance Generic Int32 where
  type Rep Int32 = D1 D_Int32 (C1 C_Int32 (S1 NoSelector (Rec0 Int32)))
  from x = M1 (M1 (M1 (K1 x)))
  to (M1 (M1 (M1 (K1 x)))) = x

data C_Int64
data D_Int64

instance Datatype D_Int64 where
  datatypeName _ = "Int64"
  moduleName   _ = "GHC.Int64"
instance Constructor C_Int64 where
  conName _ = ""

instance Generic Int64 where
  type Rep Int64 = D1 D_Int64 (C1 C_Int64 (S1 NoSelector (Rec0 Int64)))
  from x = M1 (M1 (M1 (K1 x)))
  to (M1 (M1 (M1 (K1 x)))) = x
