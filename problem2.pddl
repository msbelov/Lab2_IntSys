(define (problem Problem2)
    (:domain Delivery)
    (:objects
        smallOrder1 - smallOrder
        switcher1 - switcher
        Fruits - food
        door1 - door
        Computer - electronics
        Courier - courier
 house1 FoodStore ElectronicsStore house3 storage street  - house
        l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 - location
    )
    (:init
        (in l1 storage)
        (in l1 street)
        (in l2 storage)
        (in l4 house1)
        (in l4 street)
        (in l5 house1)
        (in l11 house3)
        (in l11 street)
        (in l12 house3)
        (in l8 street)
        (in l8 FoodStore)
        (in l9 FoodStore)
        (in l8 ElectronicsStore)
        (in l10 ElectronicsStore)
        (at switcher1 l1)
        (at door1 l1)
        (HaveGoldenCoin)
        (not(SecurityOff))
        (not(DoorIsOpen))
        (at Computer l10)
        (at Fruits l9)
        (at Courier l12)
        (at smallOrder1 l2)
        
    )
    (:goal
        (and (at smallOrder1 l5) (HaveFood) (HaveElectronics) (at Courier l12) (not(DoorIsOpen)) (not(SecurityOff)))
    )
)