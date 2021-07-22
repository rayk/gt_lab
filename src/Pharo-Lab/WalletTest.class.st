Class {
	#name : #WalletTest,
	#superclass : #TestCase,
	#classInstVars : [
		'w'
	],
	#category : #'Pharo-Lab'
}

{ #category : #tests }
WalletTest >> testBiggestCoin [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| w |
	w := Wallet new.
	w add: 10 coinsOfValue: 0.50.
	w add: 10 coinsOfValue: 0.20.
	w add: 10 coinsOfValue: 0.10.

	self assert: w biggest equals: 0.50
]

{ #category : #tests }
WalletTest >> testCanPay [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	w add:1 coinsOfValue: 0.02.
	w add:5 coinsOfValue: 0.05.
	
	self assert: w money equals: 1.87.
	self assert: (w canPay: 0.50).
	self assert: (w canPay: 2.00) not.
	
]

{ #category : #tests }
WalletTest >> testCoinAddition [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	
	self assert: (w coinsOfValue: 0.5) equals: 2.
]

{ #category : #tests }
WalletTest >> testCoins [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	
	self assert: w coinNumber equals: 5.
]

{ #category : #tests }
WalletTest >> testCoinsAdditionIsWorking [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 6 coinsOfValue: 0.50.
	self assert: (w coinsOfValue:  0.5 ) equals: 8
]

{ #category : #tests }
WalletTest >> testMoney [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	w add: 1 coinsOfValue: 0.02.
	self assert: w money equals: 1.62
]

{ #category : #tests }
WalletTest >> testMoreMoney [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| w |
	w := Wallet new.

	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	w add: 1 coinsOfValue: 0.02.
	w add: 5 coinsOfValue: 0.05.

	self assert: w money equals: 1.87.
	self assert: w coinNumber equals: 11.
]

{ #category : #tests }
WalletTest >> testWalletAtCreationIsZero [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| w |
	w := Wallet new.
	self assert: w money equals: 0.
]
