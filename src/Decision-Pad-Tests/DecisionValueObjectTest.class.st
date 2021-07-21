Class {
	#name : #DecisionValueObjectTest,
	#superclass : #TestCase,
	#category : #'Decision-Pad-Tests'
}

{ #category : #tests }
DecisionValueObjectTest >> testFactoryCreation [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	|  decision |
	decision := Decision withIdentifier: 'sjk3-0kls'.
	
	self assert: decision uid isNotNil .
	
]
