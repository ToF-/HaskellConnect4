import Test.Hspec
import Grid
import Grid

main = hspec $ do
    describe "Grid" $ do
        describe "has cells" $ do
            let i = initial
            it "that are initially empty" $ do
                cell i (0,0) `shouldBe` Nothing

            it "that can contain a yellow token" $ do
                let g = push i 0 Yellow 
                cell g (0,0) `shouldBe` Just Yellow
            it "or can contain a red token" $ do
                let g = push i 0 Red 
                cell g (0,0) `shouldBe` Just Red

            it "that are stacked on each other" $ do
                let g = push (push i 0 Yellow) 0 Red
                cell g (0,0) `shouldBe` Just Yellow
                cell g (0,1) `shouldBe` Just Red
