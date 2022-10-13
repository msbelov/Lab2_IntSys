(define (problem Problem1)
    (:domain Delivery)
    (:objects
        smallOrder1 - smallOrder
        bigOrder1 - bigOrder
        switcher1 - switcher
        Burger - food
        door1 - door
        Computer - electronics
        Courier - courier
 house1 FoodStore ElectronicsStore house2 storage street  - house
        l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 - location
    )
    (:init
        (in l1 storage)
        (in l1 street)
        (in l2 storage)
        (in l3 storage)
        (in l4 house1)
        (in l4 street)
        (in l5 house1)
        (in l6 street)
        (in l6 house2)
        (in l7 house2)
        (in l8 street)
        (in l8 FoodStore)
        (in l9 FoodStore)
        (in l8 ElectronicsStore)
        (in l10 ElectronicsStore)
        (at switcher1 l1)
        (at door1 l1)
        (not(SecurityOff))
        (not(DoorIsOpen))
        (at Computer l10)
        (at Burger l9)
        (at Courier l7)
        (at smallOrder1 l2)
        (at bigOrder1 l3)
    )
    (:goal
        (and (at smallOrder1 l5) (at bigOrder1 l7) (HaveFood) (HaveElectronics) (at Courier l7) (not(DoorIsOpen)) (not(SecurityOff)))
    )
)