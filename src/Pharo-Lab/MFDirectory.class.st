"
Part of exploring pharo

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
	#name : #MFDirectory,
	#superclass : #Object,
	#instVars : [
		'name',
		'parent',
		'files'
	],
	#category : #'Pharo-Lab'
}

{ #category : #adding }
MFDirectory >> addElement:  aFile [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	aFile parent: self.
	files add: aFile
]

{ #category : #accessing }
MFDirectory >> children [
	
	^ files 
]

{ #category : #initialization }
MFDirectory >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	files := OrderedCollection new
]

{ #category : #accessing }
MFDirectory >> name [

	^ name
]

{ #category : #accessing }
MFDirectory >> name: anObject [

	name := anObject
]

{ #category : #accessing }
MFDirectory >> parent [

	^ parent
]

{ #category : #accessing }
MFDirectory >> parent: anObject [

	parent := anObject
]

{ #category : #printing }
MFDirectory >> printOn: aStream [

	parent ifNotNil: [ parent printOn: aStream ].
	aStream << name.
	aStream << '/'
]

{ #category : #'typing/selecting keys' }
MFDirectory >> search: aString [
	
	^  files select: [  :eachFile | eachFile serach: aString  ].
]

{ #category : #accessing }
MFDirectory >> size [

	| tot |
	tot := 0.

	files do: [ :each | tot := tot + each size ].
	tot :=  tot + name size.
	tot := tot + 2.
	^ tot 
]
