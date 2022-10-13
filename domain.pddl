(define (domain Delivery)
    (:requirements :strips :adl)
    (:types
        courier door food electronics switcher smallOrder bigOrder - object
        house location - place
        
    )
    (:predicates
        (at ?x - object ?loc - location)
        (in ?loc - location ?h - house)
        (switchOff ?s - switcher)
        (SecurityOff)
        (OpenTheDoor ?d - door)
        (DoorIsOpen)
        (HaveGoldenCoin)
        (HaveSilverCoin)
        (HaveFood)
        (HaveElectronics)
    )
    
    (:action Go
        :parameters(?x - location ?y - location ?h - house)
        :precondition(and (at Courier ?x) (not (= ?x ?y)) (in ?x ?h) (in ?y ?h) )
        :effect(and (not(at Courier ?x)) (at Courier ?y))
    )
    
    (:action DeliverTo_smallOrder
        :parameters(?so - smallOrder ?x - location ?y - location ?h - house)
        :precondition(and (at Courier ?x) (SecurityOff) (DoorIsOpen) (at ?so ?x) (not (= ?x ?y)) (in ?x ?h) (in ?y ?h))
        :effect(and (not(at Courier ?x)) (HaveSilverCoin) (at Courier ?y) (not(at ?so ?x)) (at ?so ?y))
    )

     (:action DeliverTo_bigOrder
        :parameters(?bo - bigOrder ?x - location ?y - location ?h - house)
        :precondition(and (at Courier ?x) (at ?bo ?x) (SecurityOff) (DoorIsOpen) (not (= ?x ?y)) (in ?x ?h) (in ?y ?h))
        :effect(and (not(at Courier ?x)) (HaveGoldenCoin) (at Courier ?y) (not(at ?bo ?x)) (at ?bo ?y))
    )
    
     (:action TurnSecurityOff
        :parameters(?s - switcher ?x - location)
        :precondition(and (at Courier ?x) (at ?s ?x) (not(SecurityOff)) (not(switchOff ?s)))
        :effect(and (switchOff ?s) (SecurityOff))
    )
    
     (:action TurnSecurityOn
        :parameters(?s - switcher ?x - location)
        :precondition(and (at Courier ?x) (at ?s ?x) (SecurityOff) (switchOff ?s))
        :effect(and (not(switchOff ?s)) (not(SecurityOff)))
    )
    
    (:action OpenTheDoor
        :parameters(?d - door ?x - location)
        :precondition(and (at Courier ?x) (at ?d ?x) (SecurityOff) (not(DoorIsOpen)) (not(OpenTheDoor ?d)))
        :effect(and (OpenTheDoor ?d) (DoorIsOpen) )
    )
    
     (:action CloseTheDoor
        :parameters(?d - door ?x - location)
        :precondition(and (at Courier ?x) (at ?d ?x) (SecurityOff) (DoorIsOpen) (OpenTheDoor ?d))
        :effect(and (not(OpenTheDoor ?d)) (not(DoorIsOpen)))
    )
    
    (:action BuyFood
        :parameters(?f - food ?x - location)
        :precondition(and (at Courier ?x) (at ?f ?x) (HaveSilverCoin))
        :effect(and (not(HaveSilverCoin)) (HaveFood))
    )
    
    (:action BuyElectronics
        :parameters(?e - electronics ?x - location)
        :precondition(and (at Courier ?x) (at ?e ?x) (HaveGoldenCoin))
        :effect(and (not(HaveGoldenCoin)) (HaveElectronics))
    )
    
    
    
)