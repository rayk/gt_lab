"
This class contain test that target `Decision` Value Object. 
"
Class {
	#name : #DecisionValueObjectTest,
	#superclass : #TestCase,
	#category : #'Decision-Pad-Tests'
}

{ #category : #tests }
DecisionValueObjectTest >> testFactoryCreation [
	"Creates an Decision via teh class side factory."
	|  decision |
	decision := Decision withIdentifier: 'sjk3-0kls'.
	
	self assert: decision uid isNotNil .
	
]

{ #category : #tests }
DecisionValueObjectTest >> testInitializationCreation [
	"Creates an `Decision` without setting and of the instance variables."
			
	| decision |
	decision := Decision new.
	
	self assert: decision isNotNil .
	
	self assert: decision uid isNil .
]
