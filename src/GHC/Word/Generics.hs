{-# LANGUAGE TypeFamilies #-}
module GHC.Word.Generics where

import GHC.Generics
import GHC.Word

data C_Word
data D_Word

instance Datatype D_Word where
  datatypeName _ = "Word"
  moduleName   _ = "GHC.Word"
instance Constructor C_Word where
  conName _ = ""

instance Generic Word where
  type Rep Word = D1 D_Word (C1 C_Word (S1 NoSelector (Rec0 Word)))
  from x = M1 (M1 (M1 (K1 x)))
  to (M1 (M1 (M1 (K1 x)))) = x


data C_Word8
data D_Word8

instance Datatype D_Word8 where
  datatypeName _ = "Word8"
  moduleName   _ = "GHC.Word8"
instance Constructor C_Word8 where
  conName _ = ""

instance Generic Word8 where
  type Rep Word8 = D1 D_Word8 (C1 C_Word8 (S1 NoSelector (Rec0 Word8)))
  from x = M1 (M1 (M1 (K1 x)))
  to (M1 (M1 (M1 (K1 x)))) = x

data C_Word16
data D_Word16

instance Datatype D_Word16 where
  datatypeName _ = "Word16"
  moduleName   _ = "GHC.Word16"
instance Constructor C_Word16 where
  conName _ = ""

instance Generic Word16 where
  type Rep Word16 = D1 D_Word16 (C1 C_Word16 (S1 NoSelector (Rec0 Word16)))
  from x = M1 (M1 (M1 (K1 x)))
  to (M1 (M1 (M1 (K1 x)))) = x

data C_Word32
data D_Word32

instance Datatype D_Word32 where
  datatypeName _ = "Word32"
  moduleName   _ = "GHC.Word32"
instance Constructor C_Word32 where
  conName _ = ""

instance Generic Word32 where
  type Rep Word32 = D1 D_Word32 (C1 C_Word32 (S1 NoSelector (Rec0 Word32)))
  from x = M1 (M1 (M1 (K1 x)))
  to (M1 (M1 (M1 (K1 x)))) = x

data C_Word64
data D_Word64

instance Datatype D_Word64 where
  datatypeName _ = "Word64"
  moduleName   _ = "GHC.Word64"
instance Constructor C_Word64 where
  conName _ = ""

instance Generic Word64 where
  type Rep Word64 = D1 D_Word64 (C1 C_Word64 (S1 NoSelector (Rec0 Word64)))
  from x = M1 (M1 (M1 (K1 x)))
  to (M1 (M1 (M1 (K1 x)))) = x
