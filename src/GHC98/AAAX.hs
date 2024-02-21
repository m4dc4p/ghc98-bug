module GHC98.AAAX 

where 

import Barbies hiding (Void)
import Barbies.Bare
import Data.Eq
import GHC.Generics
import Data.Void

data HKDType ident t f = HKDType
  { a :: !(Wear t f Void)
    -- , b :: !(Wear t f Void)
    -- , c :: !(Wear t f Void)
    -- , d :: !(Wear t f Void)
    -- , e :: !(Wear t f Void)
    -- , f :: !(Wear t f Void)
    -- , g :: !(Wear t f Void)
    -- , h :: !(Wear t f Void)
    -- , i :: !(Wear t f Void)
    -- , j :: !(Wear t f Void)
  }
  deriving (Generic)

instance FunctorB (HKDType ident Bare)

instance FunctorB (HKDType ident Covered)

instance ConstraintsB (HKDType ident Covered)

deriving instance (Eq ident, AllBF Eq f (HKDType ident Covered)) => Eq (HKDType ident Covered f)

