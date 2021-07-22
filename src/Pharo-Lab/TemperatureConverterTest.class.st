Class {
	#name : #TemperatureConverterTest,
	#superclass : #TestCase,
	#category : #'Pharo-Lab'
}

{ #category : #tests }
TemperatureConverterTest >> testCelsiusToFahrenheit [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| converter |
	converter  := TemperatureConverter new.
	self assert: (converter  convertCelsius: 30) equals: 86.0.
]

{ #category : #tests }
TemperatureConverterTest >> testFToCScale [
	
	|converter results expectedCelsius |
	
	converter := TemperatureConverter new.
	
	results := (converter  convertFahrenheit: 50 to: 70   by:  2).
	expectedCelsius := #(10.0 11.1 12.2 13.3 14.4 15.5 16.6 17.7 18.8 20.0 21.1).
	
	results with: expectedCelsius do: [ :res :cel | res value closeTo: cel  ].
]

{ #category : #tests }
TemperatureConverterTest >> testFarhenheitToCelsius [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| converter |
	converter := TemperatureConverter new.
	self assert: (converter  convertFahrenheit: 86) closeTo: 30.0 precision: 0.1.
	self assert: (converter  convertFahrenheit: 50) closeTo:  10.0 precision: 0.1.
]

{ #category : #tests }
TemperatureConverterTest >> testLocationAndDate [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| office |
	office := TemperatureConverter  new location: 'Office'.
	office measureCelsius: 19.
	office measureCelsius: 21.
	
	self assert: office measureCount equals: 2.
	
	self assert: office dates equals: { Date today . Date today } asOrderedCollection.
	
	self assert: office  temperatures equals:  { 19 . 21 } asOrderedCollection .
	
	
]
