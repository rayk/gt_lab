"
Repesents a wallet

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	money:		<Object>


    Implementation Points
"
Class {
	#name : #Wallet,
	#superclass : #Object,
	#instVars : [
		'money',
		'bagCoins'
	],
	#category : #'Pharo-Lab'
}

{ #category : #adding }
Wallet >> add: anIntegerCount coinsOfValue: aFloatValue [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	bagCoins add: aFloatValue withOccurrences: anIntegerCount .
]

{ #category : #accessing }
Wallet >> biggest [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	 ^ bagCoins  max .
]

{ #category : #testing }
Wallet >> canPay: anAmount [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	

	| available |
	available := self money.
	^ available  > anAmount .
			

]

{ #category : #accessing }
Wallet >> coinNumber [
	
	^ bagCoins size.
]

{ #category : #settings }
Wallet >> coinsOfValue: aFloatValue [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	^ bagCoins occurrencesOf: aFloatValue .
]

{ #category : #initialization }
Wallet >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	money := 0.
	bagCoins := Bag new
]

{ #category : #accessing }
Wallet >> money [

	| value |
	value := 0.
	bagCoins doWithOccurrences: [ :each :occurrence | 
		value := value + (each * occurrence) ].

	^ value
]

{ #category : #accessing }
Wallet >> money: anObject [

	money := anObject
]
