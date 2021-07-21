Class {
	#name : #DecisionExample,
	#superclass : #Object,
	#category : #'Decision-Pad-Examples'
}

{ #category : #accessing }
DecisionExample >> creatingDecision [
	<gtExample>
	
	| decision |
	
	decision := Decision withIdentifier: UUIDGenerator new next.
	
	^ decision
]
