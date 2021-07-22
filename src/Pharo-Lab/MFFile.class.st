"
Repersents a file
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
	contents:		<Object>
	name:		<Object>
	parent:		<Object>


    Implementation Points
"
Class {
	#name : #MFFile,
	#superclass : #Object,
	#instVars : [
		'parent',
		'name',
		'contents'
	],
	#category : #'Pharo-Lab'
}

{ #category : #accessing }
MFFile >> contents [

	^ contents
]

{ #category : #accessing }
MFFile >> contents: anObject [

	contents := anObject
]

{ #category : #initialization }
MFFile >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	contents  := ''
]

{ #category : #accessing }
MFFile >> name [

	^ name
]

{ #category : #accessing }
MFFile >> name: anObject [

	name := anObject
]

{ #category : #accessing }
MFFile >> parent [

	^ parent
]

{ #category : #accessing }
MFFile >> parent: anObject [

	parent := anObject
]

{ #category : #printing }
MFFile >> printOn: aStream [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	parent ifNotNil: [ parent printOn:  aStream ] .
	aStream << name.
]

{ #category : #'typing/selecting keys' }
MFFile >> search: aString [
	
	^ '*', aString, '*' match: contents 
]

{ #category : #accessing }
MFFile >> size [
	^ contents size + name size.
]
