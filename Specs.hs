import Test.Hspec
import Grid
import Grid

main = hspec $ do
    describe "Grid" $ do
        describe "has cells" $ do
            let g = initial
            it "that are initially empty" $ do
                cell g (0,0) `shouldBe` Nothing

            it "that can contain a token" $ do
                let g' = push g 0 Yellow 
                cell g' (0,0) `shouldBe` Just Yellow
