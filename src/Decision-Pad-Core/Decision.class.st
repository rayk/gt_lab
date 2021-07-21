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

{ #category : #constructor }
Decision class >> withIdentifier: aString [
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
			
	^ self new uid: aString;
	yourself 
]

{ #category : #comparing }
Decision >> = anObject [

	"Answer whether the receiver and anObject represent the same object in terms of values: ."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ uid = anObject uid and: [ 
		  owner = anObject owner and: [ 
			  commenced = anObject commenced and: [ 
				  decscription = anObject decscription and: [ 
					  label = anObject label ] ] ] ]
]

{ #category : #accessing }
Decision >> commenced [
	"Date time when this decision was startted to be considered."
	^ commenced
]

{ #category : #accessing }
Decision >> commenced: anObject [

	commenced := anObject
]

{ #category : #accessing }
Decision >> decscription [
	"Short explaination of the purpose of this decision"
	^ decscription
]

{ #category : #accessing }
Decision >> decscription: anObject [

	decscription := anObject
]

{ #category : #comparing }
Decision >> hash [

	"Answer an integer value that is related to the identity of the receiver."

	^ uid hash bitXor: (owner hash bitXor:
			   (commenced hash bitXor: (decscription hash bitXor: label hash)))
]

{ #category : #initialization }
Decision >> initialize [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	uid := 'someid'
]

{ #category : #accessing }
Decision >> label [
	"A name or common way to refering to this decision."
	^ label
]

{ #category : #accessing }
Decision >> label: anObject [

	label := anObject
]

{ #category : #accessing }
Decision >> owner [
	"The user that is responible for this decision."
	^ owner
]

{ #category : #accessing }
Decision >> owner: anObject [

	owner := anObject
]

{ #category : #printing }
Decision >> printOn: aStream [

	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' uid: ';
		print: uid.
	aStream
		nextPutAll: ' owner: ';
		print: owner.
	aStream
		nextPutAll: ' commenced: ';
		print: commenced.
	aStream
		nextPutAll: ' decscription: ';
		print: decscription.
	aStream
		nextPutAll: ' label: ';
		print: label
]

{ #category : #accessing }
Decision >> uid [
	"A unquie identifier for this decision."
	^ uid
]

{ #category : #accessing }
Decision >> uid: anObject [

	uid := anObject
]
