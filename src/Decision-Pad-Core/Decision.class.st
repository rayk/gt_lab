"
I repersent a decision that the user is invovled with.

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #Decision,
	#superclass : #Object,
	#instVars : [
		'uid',
		'label',
		'decscription',
		'commenced',
		'owner'
	],
	#category : #'Decision-Pad-Core'
}

{ #category : #accessing }
Decision >> commenced [

	^ commenced
]

{ #category : #accessing }
Decision >> commenced: anObject [

	commenced := anObject
]

{ #category : #accessing }
Decision >> decscription [

	^ decscription
]

{ #category : #accessing }
Decision >> decscription: anObject [

	decscription := anObject
]

{ #category : #accessing }
Decision >> label [

	^ label
]

{ #category : #accessing }
Decision >> label: anObject [

	label := anObject
]

{ #category : #accessing }
Decision >> owner [

	^ owner
]

{ #category : #accessing }
Decision >> owner: anObject [

	owner := anObject
]

{ #category : #accessing }
Decision >> uid [

	^ uid
]

{ #category : #accessing }
Decision >> uid: anObject [

	uid := anObject
]
