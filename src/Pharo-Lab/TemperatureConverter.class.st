"
Convert temps
"
Class {
	#name : #TemperatureConverter,
	#superclass : #Object,
	#instVars : [
		'location',
		'measures'
	],
	#category : #'Pharo-Lab'
}

{ #category : #operations }
TemperatureConverter >> convertCelsius: anInteger [
	"Convert anInteger from celsius to fahrenheit"
			
	^((anInteger * 1.8) + 32)
]

{ #category : #operations }
TemperatureConverter >> convertFahrenheit: anInteger [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
		
		| a b|	
			
			a := anInteger  - 32.
			b := (5/9).
			
	^ a * b
]

{ #category : #operations }
TemperatureConverter >> convertFahrenheit: lowInteger to: highInteger by: stepInteger [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	^ (lowInteger to: highInteger by: stepInteger ) collect: [ :f | f -> (self convertFahrenheit: f) ].
	
]

{ #category : #initialization }
TemperatureConverter >> initialize [ 
	location  := 'Nice'.
	measures  := OrderedCollection  new.
]

{ #category : #operations }
TemperatureConverter >> measureCelsius: aTemp [
	
	measures add: DateAndTime  now -> aTemp .
			

]

{ #category : #'accessing - testing' }
TemperatureConverter >> measureCount [ 
	^ measures count 
]
