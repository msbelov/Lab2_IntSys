(define (problem Problem3)
    (:domain Delivery)
    (:objects
        Fruits - food
        Computer - electronics
        Courier - courier
 house1 FoodStore ElectronicsStore house2 street  - house
        l1 l2 l3 l4 l5 l6 l7 - location
    )
    (:init
        (in l1 house1)
        (in l2 house1)
        (in l2 street)
        (in l3 street)
        (in l3 house2)
        (in l4 house2)
        (in l5 street)
        (in l5 FoodStore)
        (in l5 ElectronicsStore)
        (in l6 FoodStore)
        (in l7 ElectronicsStore)
        (at Computer l7)
        (at Fruits l6)
        (at Courier l1)
        (HaveGoldenCoin)
        (HaveSilverCoin)
    )
    
    (:goal
        (and  (HaveFood) (HaveElectronics) (at Courier l4))
    )
)