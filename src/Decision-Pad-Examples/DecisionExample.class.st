"
Decision Object Example
"
Class {
	#name : #DecisionExample,
	#superclass : #Object,
	#category : #'Decision-Pad-Examples'
}

{ #category : #create }
DecisionExample >> creatingDecision [
	<gtExample>
	
	| decision |
	
	decision := Decision withIdentifier: UUIDGenerator new next.
	
	^ decision
]

{ #category : #create }
DecisionExample >> emptyDecision [
	<gtExample>
	
	^ Decision new.
]
