TestCase subclass: #DistanceTest	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'EjerciciosPoo-Distance'!!DistanceTest methodsFor: 'distance units'!centimeter
	
	self error: 'Este metodo debe devolver el objeto que la unidad de distancia centimetro'! !!DistanceTest methodsFor: 'distance units'!decameter
	
	self error: 'Este metodo debe devolver el objeto que la unidad de distancia decametro'! !!DistanceTest methodsFor: 'distance units'!decimeter
	
	self error: 'Este metodo debe devolver el objeto que la unidad de distancia decimetro'! !!DistanceTest methodsFor: 'distance units'!hectometer
	
	self error: 'Este metodo debe devolver el objeto que la unidad de distancia hectometro'! !!DistanceTest methodsFor: 'distance units'!kilometer
	
	self error: 'Este metodo debe devolver el objeto que la unidad de distancia kilometro'! !!DistanceTest methodsFor: 'distance units'!meter

	self error: 'Este metodo debe devolver el objeto que la unidad de distancia metro'! !!DistanceTest methodsFor: 'distance units'!millimeter
	
	self error: 'Este metodo debe devolver el objeto que la unidad de distancia millimetro'! !!DistanceTest methodsFor: 'distance measures'!oneCentimeter
	
	self error: 'Este metodo debe devolver un objeto que represente un centimetro'! !!DistanceTest methodsFor: 'distance measures'!oneHundredCentimeters
	
	self error: 'Este metodo debe devolver un objeto que represente cien centimetros'! !!DistanceTest methodsFor: 'distance measures'!oneMeter
	
	self error: 'Este metodo debe devolver un objeto que represente un metro'! !!DistanceTest methodsFor: 'distance measures'!twoHundredCentimeters
	
	self error: 'Este metodo debe devolver un objeto que represente doscientos centimetros'! !!DistanceTest methodsFor: 'distance measures'!twoMeters
	
	self error: 'Este metodo debe devolver un objeto que represente dos metros'! !!DistanceTest methodsFor: 'distance measures'!zeroMeters

	self error: 'Este metodo debe devolver un objeto que represente cero metros'! !!DistanceTest methodsFor: '1 - Test equality'!test01Accessing

	"Verifico no solo el protocolo de accessing sino tambien que los objetos
	que se utilizan esten bien construidos, o sea, que 1 metro sea 1 metro y no 100 centimetros"
	self assert: self oneMeter amount = 1.
	self assert: self oneMeter unit = self meter.

	self assert: self twoMeters amount = 2.
	self assert: self twoMeters unit = self meter.

	self assert: self oneHundredCentimeters amount = 100.
	self assert: self oneHundredCentimeters unit = self centimeter.

	self assert: self twoHundredCentimeters amount = 200.
	self assert: self twoHundredCentimeters unit = self centimeter.! !!DistanceTest methodsFor: '1 - Test equality'!test02EqualSameUnit

	self assert: self oneMeter = self oneMeter.
	self deny: self oneMeter = self twoMeters.
	
	self assert: self oneHundredCentimeters = self oneHundredCentimeters.
	self deny: self oneHundredCentimeters = self twoHundredCentimeters.
	

! !!DistanceTest methodsFor: '1 - Test equality'!test03EqualDifferentUnit

	self assert: self oneMeter = self oneHundredCentimeters.
	"Este assert no es redundante. Verifica que la igualdad en conmutativa"
	self assert: self oneHundredCentimeters = self oneMeter.

	self assert: self twoMeters = self twoHundredCentimeters.
	self assert: self twoHundredCentimeters = self twoMeters
! !!DistanceTest methodsFor: '1 - Test equality'!test04ConvertTo

	"A partir del test anterior, se deben haber dado cuenta que debemos poder
	convertir distancias a distintas unidades... y que ademas dos distancias de distintas unidades
	pueden ser iguales... Por lo tanto ¬øpor que no hacer esta caracteristica de las distancias explicita?
	Veran que luego se torna muy util
	
	Respecto de como esta escrito el test, para no tener que escribir los assert para oneMeter y oneHundredCentimeters 
	creo un array y lo recorro... ¬øSe podria escribir menos aun en este test?"
	
	(Array with: self oneMeter with: self oneHundredCentimeters) do: [ :aDistance |
		self assert: (aDistance convertTo: self meter) amount = 1.
		self assert: (aDistance convertTo: self meter) unit = self meter.
		
		self assert: (aDistance convertTo: self decimeter) amount = 10.
		self assert: (aDistance convertTo: self decimeter) unit = self decimeter.
		
		self assert: (aDistance convertTo: self centimeter) amount = 100.
		self assert: (aDistance convertTo: self centimeter) unit = self centimeter.
		
		self assert: (aDistance convertTo: self millimeter) amount = 1000.
		self assert: (aDistance convertTo: self millimeter) unit = self millimeter.
	
		self assert: (aDistance convertTo: self decameter) amount = (1/10).
		self assert: (aDistance convertTo: self decameter) unit = self decameter.
		
		self assert: (aDistance convertTo: self hectometer) amount = (1/100).
		self assert: (aDistance convertTo: self hectometer) unit = self hectometer.
	
		self assert: (aDistance convertTo: self kilometer) amount = (1/1000).
		self assert: (aDistance convertTo: self kilometer) unit = self kilometer ]! !!DistanceTest methodsFor: '1 - Test equality'!test05NotEqual

	self assert: self oneMeter ~= self twoMeters.
	self assert: self twoMeters ~= self oneMeter! !!DistanceTest methodsFor: '1 - Test equality'!test06NotEqualDifferentTypeOfObject

	"El igual no debe generar ningun tipo de error por mas que se comparen objetos
	de distintos tipos
	Fijense como se crea una instancia de Object sin ningun tipo de problema... ¬øque representa?"

	self deny: self oneMeter = Object new.
	self deny: Object new = self oneMeter! !!DistanceTest methodsFor: '1 - Test equality'!test07NotIdenticalButEquals

	"Dos objetos que ocupan distintas posiciones de memoria pero representan
	la misma entidad de la realidad, deben devolver true cuando se los compara por igual, puesto
	que representan la misma entidad de la realidad.
	Tener en cuenta que el mensaje #== significa que ocupan la misma posicion de memoria"

	| originalOneMeter copiedOneMeter |

	"Al objeto oneMeter lo copio para asegurarme de tener uno oneMeter en otra posicion de memoria"

	originalOneMeter := self oneMeter.
	copiedOneMeter := originalOneMeter copy.

	"Me aseguro que ocupen distinta posicion de memoria"
	self deny: originalOneMeter == copiedOneMeter.

	"Ahora me aseguro que sean iguales"
	self assert: originalOneMeter = copiedOneMeter! !!DistanceTest methodsFor: '1 - Test equality'!test08Hash

	"Debido a como funcionan los diccionarios, cuando dos objetos son iguales deben
	tener es mismo hash. La inversa no es verdad"
	
	self assert: self oneMeter hash=self oneMeter hash.
	self assert: self oneMeter hash=self oneHundredCentimeters hash.

	
	
! !!DistanceTest methodsFor: '2 - Test arithmetic operations'!test09AddSameUnit

	self assert: (self oneMeter + self oneMeter) = self twoMeters

! !!DistanceTest methodsFor: '2 - Test arithmetic operations'!test10AddDifferentUnit

	self assert: (self oneMeter + self oneHundredCentimeters) = self twoMeters

! !!DistanceTest methodsFor: '2 - Test arithmetic operations'!test11AddCommutativity

	self assert: (self oneMeter + self twoMeters)=(self twoMeters + self oneMeter)


! !!DistanceTest methodsFor: '2 - Test arithmetic operations'!test12AddAssociativity

	self assert: 
		((self oneMeter + self oneMeter) + self twoMeters) = 
		(self oneMeter + (self oneMeter + self twoMeters))


! !!DistanceTest methodsFor: '2 - Test arithmetic operations'!test13Negated

	self assert: self oneMeter negated amount=self oneMeter amount negated.
	self assert: self oneMeter negated negated=self oneMeter.
	
! !!DistanceTest methodsFor: '2 - Test arithmetic operations'!test14SubtractSameUnit

	self assert: (self twoMeters - self oneMeter) = self oneMeter.
	self assert: (self oneMeter - self oneMeter) = self zeroMeters.
	self assert: (self oneMeter - self twoMeters) = self oneMeter negated
	

	! !!DistanceTest methodsFor: '2 - Test arithmetic operations'!test15SubtractDifferentUnit

	self assert: (self twoMeters - self oneHundredCentimeters) = self oneMeter.
	self assert: (self oneMeter - self oneHundredCentimeters) = self zeroMeters.
	self assert: (self oneHundredCentimeters - self twoMeters) = self oneMeter negated
	

	! !!DistanceTest methodsFor: '2 - Test arithmetic operations'!test16SubtractAssociativity

	self assert: 
		((self twoMeters - self oneMeter) - self oneMeter) = 
		(self twoMeters - (self oneMeter + self oneMeter)).

	

	! !!DistanceTest methodsFor: '2 - Test arithmetic operations'!test17MultiplyByNumber

	self assert: self oneMeter * 1 = self oneMeter.
	self assert: self oneMeter * 2 = self twoMeters.
	self assert: self oneMeter * 0 = self zeroMeters.
! !!DistanceTest methodsFor: '2 - Test arithmetic operations'!test18MultiplicationAssociativiyByNumber

	self assert: ((self oneMeter * 2) * 5) = (self oneMeter * (2 * 5))
! !!DistanceTest methodsFor: '2 - Test arithmetic operations'!test19DivisionByNumber

	self assert: (self oneMeter / 1) = self oneMeter.
	self assert: (self twoMeters / 2) = self oneMeter.


! !!DistanceTest methodsFor: '2 - Test arithmetic operations'!test20MultipicationAndDivisionByNumber

	self assert: (self oneMeter * 10 / 10) = self oneMeter.
	self assert: (self oneMeter / 10 * 10) = self oneMeter.

	self assert: (self oneMeter * 8 / 4) = self twoMeters.
	self assert: (self oneMeter / 4 * 8) = self twoMeters.
! !!DistanceTest methodsFor: '3 - Test magnitude protocol'!test21LessThan

	self assert: self oneMeter < self twoMeters.
	self deny: self twoMeters < self oneMeter.
	
	"Me aseguro que funcione para distancias negativas y cero"
	self assert: self oneMeter negated < self oneMeter.
	self assert: self zeroMeters < self oneMeter.
	self deny: self zeroMeters < self oneMeter negated.
	! !!DistanceTest methodsFor: '3 - Test magnitude protocol'!test22GreaterThan

	self assert: self twoMeters > self oneMeter.
	self deny: self oneMeter > self twoMeters.
	
	"Me aseguro que funcione para distancias negativas y cero"
	self deny: self oneMeter negated > self oneMeter.
	self deny: self zeroMeters > self oneMeter.
	self assert: self zeroMeters > self oneMeter negated.
	! !!DistanceTest methodsFor: '3 - Test magnitude protocol'!test23LessThanEqual

	self assert: self oneMeter <= self twoMeters.
	self deny: self twoMeters <= self oneMeter.

	self assert: self oneMeter <= self oneMeter.
	
! !!DistanceTest methodsFor: '3 - Test magnitude protocol'!test24GreaterThanEqual

	self assert: self twoMeters >= self oneMeter.
	self deny: self oneMeter >= self twoMeters.
	
	self assert: self oneMeter >= self oneMeter.
	
! !!DistanceTest methodsFor: '3 - Test magnitude protocol'!test25LessThanDifferentUnit

	self assert: self oneMeter < self twoHundredCentimeters.
	self deny: self twoHundredCentimeters < self oneMeter.
	
	self assert: self oneHundredCentimeters < self twoMeters.
	self deny: self twoMeters < self oneHundredCentimeters.
! !!DistanceTest methodsFor: '3 - Test magnitude protocol'!test26GreaterThanDifferentUnits

	self assert: self twoMeters > self oneHundredCentimeters.
	self deny: self oneHundredCentimeters > self twoMeters.

	self assert: self twoHundredCentimeters > self oneMeter.
	self deny: self oneMeter > self twoHundredCentimeters 
! !!DistanceTest methodsFor: '3 - Test magnitude protocol'!test27LessThanEqualDifferentUnits

	self assert: self oneMeter <= self twoHundredCentimeters.
	self deny: self twoMeters <= self oneHundredCentimeters.

	self assert: self oneHundredCentimeters <= self twoMeters.
	self deny: self twoHundredCentimeters <= self oneMeter.

	self assert: self oneMeter <= self oneHundredCentimeters.
	self assert: self oneHundredCentimeters <= self oneMeter.
	
! !!DistanceTest methodsFor: '3 - Test magnitude protocol'!test28GreaterThanEqualDifferentUnit

	self assert: self twoMeters >= self oneHundredCentimeters.
	self deny: self oneHundredCentimeters >= self twoMeters.
	
	self assert: self twoHundredCentimeters >= self oneMeter.
	self deny: self oneMeter >= self twoHundredCentimeters.

	self assert: self oneMeter >= self oneHundredCentimeters.
	self assert: self oneHundredCentimeters >= self oneMeter.	
! !!DistanceTest methodsFor: '3 - Test magnitude protocol'!test29Max

	self assert: (self twoMeters max: self oneMeter) = self twoMeters.
	self assert: (self oneMeter max: self twoMeters) = self twoMeters.

	self assert: (self twoMeters max: self oneHundredCentimeters) = self twoMeters.
	self assert: (self oneHundredCentimeters max: self twoMeters) = self twoMeters.

	
! !!DistanceTest methodsFor: '3 - Test magnitude protocol'!test30Min

	self assert: (self twoMeters min: self oneMeter) = self oneMeter.
	self assert: (self oneMeter min: self twoMeters) = self oneMeter.

	self assert: (self twoMeters min: self oneHundredCentimeters) = self oneHundredCentimeters.
	self assert: (self oneHundredCentimeters min: self twoMeters) = self oneHundredCentimeters.

	
! !!DistanceTest methodsFor: '3 - Test magnitude protocol'!test31BetweenAnd

	self assert: (self oneMeter between: self zeroMeters and: self twoMeters).
	self assert: (self oneHundredCentimeters between: self zeroMeters and: self twoMeters).
	
	self deny: (self twoMeters between: self zeroMeters and: self oneMeter).
	self deny: (self twoHundredCentimeters between: self zeroMeters and: self oneMeter).

! !!DistanceTest methodsFor: '4 - Test interval protocol'!test32To

	self assert: (self oneMeter to: self twoMeters) from=self oneMeter.
	self assert: (self oneMeter to: self twoMeters) to=self twoMeters.
	self assert: (self oneMeter to: self twoMeters) by=self oneMeter.	

	self assert: (self oneHundredCentimeters to: self twoMeters) from=self oneMeter.
	self assert: (self oneHundredCentimeters to: self twoMeters) to=self twoMeters.
	self assert: (self oneHundredCentimeters to: self twoMeters) by=self oneCentimeter.	
	! !!DistanceTest methodsFor: '4 - Test interval protocol'!test33ToBy

	self assert: (self zeroMeters to: (self twoMeters * 2) by: self twoMeters) from=self zeroMeters.
	self assert: (self zeroMeters to: (self twoMeters * 2) by: self twoMeters) to=(self twoMeters * 2).
	self assert: (self zeroMeters to: (self twoMeters * 2) by: self twoMeters) by=self twoMeters.

	self assert: ((self twoMeters * 2) to: self zeroMeters by: self twoMeters negated) from=(self twoMeters * 2).
	self assert: ((self twoMeters * 2) to: self zeroMeters by: self twoMeters negated) to=self zeroMeters.
	self assert: ((self twoMeters * 2) to: self zeroMeters by: self twoMeters negated) by=self twoMeters negated

	! !!DistanceTest methodsFor: '4 - Test interval protocol'!test34ToSize

	self assert: (self zeroMeters to: (self twoMeters * 2) ) size =5.
	self assert: ((self twoMeters * 2) to: self zeroMeters by: self oneMeter negated) size =5.
! !!DistanceTest methodsFor: '4 - Test interval protocol'!test35ToDo

	| value |
	
	value := 1.
	(self oneMeter to: (self oneMeter * 10)) do: [ :aDistance |
		self assert: aDistance amount = value.
		value := value + 1 ].
	
	self assert: value = 11
! !!DistanceTest methodsFor: '4 - Test interval protocol'!test36ToByDo

	| value |
	
	value := 1.
	(self oneMeter to: (self oneMeter * 10) by: self twoMeters) do: [ :aDistance |
		self assert: aDistance amount = value.
		value := value + 2 ].
	
	self assert: value = 11
! !