TestCase subclass: #MeasureTest	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'EjerciciosPoo-Measure'!!MeasureTest methodsFor: 'errors'!canNotConvertMeasurementException
	
	self error: 'Este metodo debe devolver el objeto que representa que no se pudo
		convertir una medida a la unidad pedida'! !!MeasureTest methodsFor: 'temperature units'!celsius
	
	self error: 'Este metodo debe devolver un objeto que la unidad de temperatura Celsius'! !!MeasureTest methodsFor: 'temperature units'!fahrenheit
	
	self error: 'Este metodo debe devolver un objeto que represente la unidad de temperatura Fahrenheit'! !!MeasureTest methodsFor: 'distance units'!centimeter
	
	self error: 'Este metodo debe devolver el objeto que la unidad de distancia centimetro'! !!MeasureTest methodsFor: 'distance units'!decameter
	
	self error: 'Este metodo debe devolver el objeto que la unidad de distancia decametro'! !!MeasureTest methodsFor: 'distance units'!decimeter
	
	self error: 'Este metodo debe devolver el objeto que la unidad de distancia decimetro'! !!MeasureTest methodsFor: 'distance units'!hectometer
	
	self error: 'Este metodo debe devolver el objeto que la unidad de distancia hectometro'! !!MeasureTest methodsFor: 'distance units'!kilometer
	
	self error: 'Este metodo debe devolver el objeto que la unidad de distancia kilometro'! !!MeasureTest methodsFor: 'distance units'!meter

	self error: 'Este metodo debe devolver el objeto que la unidad de distancia metro'! !!MeasureTest methodsFor: 'distance units'!millimeter
	
	self error: 'Este metodo debe devolver el objeto que la unidad de distancia millimetro'! !!MeasureTest methodsFor: 'time units'!day
	
	self error: 'Este metodo debe devolver un objeto que represente la unidad dia'! !!MeasureTest methodsFor: 'time units'!hour
	
	self error: 'Este metodo debe devolver un objeto que represente la unidad hora'! !!MeasureTest methodsFor: 'time units'!minute
	
	self error: 'Este metodo debe devolver un objeto que represente la unidad minuto'! !!MeasureTest methodsFor: 'time units'!second
	
	self error: 'Este metodo debe devolver un objeto que represente la unidad segundo'! !!MeasureTest methodsFor: 'temperature measurements'!oneCelsius
	
	self error: 'Este metodo debe devolver un objeto que represente un grado centigrado'! !!MeasureTest methodsFor: 'temperature measurements'!thirtyTwoFahrenheits
	
	self error: 'Este metodo debe devolver un objeto que represente 32 fahrenhetis, o sea
	0 grados centigrados'! !!MeasureTest methodsFor: 'temperature measurements'!twoCelsius
	
	self error: 'Este metodo debe devolver un objeto que represente dos grados centigrados'! !!MeasureTest methodsFor: 'temperature measurements'!zeroCelsius
	
	self error: 'Este metodo debe devolver un objeto que represente cero grados centrigrados'! !!MeasureTest methodsFor: 'distance measurements'!oneCentimeter
	
	self error: 'Este metodo debe devolver un objeto que represente un centimetro'! !!MeasureTest methodsFor: 'distance measurements'!oneHundredCentimeters
	
	self error: 'Este metodo debe devolver un objeto que represente cien centimetros'! !!MeasureTest methodsFor: 'distance measurements'!oneMeter
	
	self error: 'Este metodo debe devolver un objeto que represente un metro'! !!MeasureTest methodsFor: 'distance measurements'!twoHundredCentimeters
	
	self error: 'Este metodo debe devolver un objeto que represente doscientos centimetros'! !!MeasureTest methodsFor: 'distance measurements'!twoMeters
	
	self error: 'Este metodo debe devolver un objeto que represente dos metros'! !!MeasureTest methodsFor: 'distance measurements'!zeroMeters

	self error: 'Este metodo debe devolver un objeto que represente cero metros'! !!MeasureTest methodsFor: 'time measurements'!oneDay
	
	self error: 'Este metodo debe devolver un objeto que represente un dia'! !!MeasureTest methodsFor: 'time measurements'!oneHour
	
	self error: 'Este metodo debe devolver un objeto que represente una hora'! !!MeasureTest methodsFor: 'time measurements'!oneMinute
	
	self error: 'Este metodo debe devolver un objeto que represente un minuto'! !!MeasureTest methodsFor: 'time measurements'!oneSecond

	self error: 'Este metodo debe devolver un objeto que represente un segundo'! !!MeasureTest methodsFor: 'time measurements'!sixtyMinutes
	
	self error: 'Este metodo debe devolver un objeto que represente sesenta minutos'! !!MeasureTest methodsFor: 'time measurements'!sixtyOneSeconds
	
	self error: 'Este metodo debe devolver un objeto que represente sesenta y un segundos'! !!MeasureTest methodsFor: 'time measurements'!sixtySeconds
	
	self error: 'Este metodo debe devolver un objeto que represente sesenta segundos'! !!MeasureTest methodsFor: 'time measurements'!twentyFourHours
	
	self error: 'Este metodo debe devolver un objeto que represente veinticuatros horas'! !!MeasureTest methodsFor: 'time measurements'!twoSeconds
	
	self error: 'Este metodo debe devolver un objeto que represente dos segundos'! !!MeasureTest methodsFor: 'time measurements'!zeroSeconds
	
	self error: 'Este metodo debe devolver un objeto que represente cero segundos'! !!MeasureTest methodsFor: '1 - Test equality'!test01Accessing

	"Verifico no solo el protocolo de accessing sino tambien que los objetos
	que se utilizan esten bien construidos, o sea, que 1 metro sea 1 metro y no 100 centimetros"
	self assert: self oneMeter amount = 1.
	self assert: self oneMeter unit = self meter.

	self assert: self twoMeters amount = 2.
	self assert: self twoMeters unit = self meter.

	self assert: self oneHundredCentimeters amount = 100.
	self assert: self oneHundredCentimeters unit = self centimeter.

	self assert: self twoHundredCentimeters amount = 200.
	self assert: self twoHundredCentimeters unit = self centimeter.! !!MeasureTest methodsFor: '1 - Test equality'!test02EqualSameUnit

	self assert: self oneMeter = self oneMeter.
	self deny: self oneMeter = self twoMeters.
	
	self assert: self oneSecond = self oneSecond.
	self deny: self oneSecond = self sixtySeconds.
	
	self assert: self oneCelsius = self oneCelsius.
	self deny: self oneCelsius = self zeroCelsius.

! !!MeasureTest methodsFor: '1 - Test equality'!test0301EqualDifferentUnitSameDomain

	self assert: self oneMeter = self oneHundredCentimeters.
	"Este assert no es redundante. Verifica que la igualdad en conmutativa"
	self assert: self oneHundredCentimeters = self oneMeter.

	self assert: self twoMeters = self twoHundredCentimeters.
	self assert: self twoHundredCentimeters = self twoMeters.
	
	self assert: self oneMinute = self sixtySeconds.
	self assert: self zeroCelsius = self thirtyTwoFahrenheits.
! !!MeasureTest methodsFor: '1 - Test equality'!test0302EqualDifferentUnitDifferentDomain

	self deny: self oneMeter = self oneSecond.
	self deny: self oneMeter = self oneCelsius.
	self deny: self oneCelsius = self oneSecond.! !!MeasureTest methodsFor: '1 - Test equality'!test0401ConvertToDistance

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
		self assert: (aDistance convertTo: self kilometer) unit = self kilometer ]! !!MeasureTest methodsFor: '1 - Test equality'!test0402ConvertToTime

	self assert: (self oneMinute convertTo: self second) = self sixtySeconds.
	self assert: (self sixtySeconds convertTo: self minute) = self oneMinute.

	self assert: (self oneHour convertTo: self minute) = self sixtyMinutes.
	self assert: (self sixtyMinutes convertTo: self hour) = self oneHour.

	self assert: (self oneDay convertTo: self hour) = self twentyFourHours.
	self assert: (self twentyFourHours convertTo: self day) = self oneDay.
! !!MeasureTest methodsFor: '1 - Test equality'!test0403ConvertToTemperature

	self assert: (self zeroCelsius convertTo: self fahrenheit) = self thirtyTwoFahrenheits.
	self assert: (self thirtyTwoFahrenheits convertTo: self celsius) = self zeroCelsius.
! !!MeasureTest methodsFor: '1 - Test equality'!test0404InvalidConvertTo

	self should: [ self oneMeter convertTo: self second ] raise: self canNotConvertMeasurementException.

! !!MeasureTest methodsFor: '1 - Test equality'!test05NotEqual

	self assert: self oneMeter ~= self twoMeters.
	self assert: self oneSecond ~= self sixtySeconds.
	self assert: self oneCelsius ~= self zeroCelsius.! !!MeasureTest methodsFor: '1 - Test equality'!test06NotEqualDifferentTypeOfObject

	"El igual no debe generar ningun tipo de error por mas que se comparen objetos
	de distintos tipos
	Fijense como se crea una instancia de Object sin ningun tipo de problema... ¬øque representa?"

	self deny: self oneMeter = Object new.
	self deny: Object new = self oneMeter! !!MeasureTest methodsFor: '1 - Test equality'!test07NotIdenticalButEquals

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
	self assert: originalOneMeter = copiedOneMeter! !!MeasureTest methodsFor: '1 - Test equality'!test08Hash

	"Debido a como funcionan los diccionarios, cuando dos objetos son iguales deben
	tener es mismo hash. La inversa no es verdad"
	
	self assert: self oneMeter hash=self oneMeter hash.
	self assert: self oneMeter hash=self oneHundredCentimeters hash.
	
	self assert: self oneMinute hash = self sixtySeconds hash.
	self assert: self zeroCelsius hash = self thirtyTwoFahrenheits hash

	
	
! !!MeasureTest methodsFor: '2 - Test arithmetic operations'!test09AddSameUnit

	self assert: (self oneMeter + self oneMeter) = self twoMeters.
	self assert: (self oneSecond + self oneSecond) = self twoSeconds.
	self assert: (self oneCelsius + self oneCelsius) = self twoCelsius.

! !!MeasureTest methodsFor: '2 - Test arithmetic operations'!test10AddDifferentUnit

	self assert: (self oneMeter + self oneHundredCentimeters) = self twoMeters.
	self assert: (self oneSecond + self oneMinute) = self sixtyOneSeconds.

! !!MeasureTest methodsFor: '2 - Test arithmetic operations'!test11AddCommutativity

	self assert: (self oneMeter + self twoMeters)=(self twoMeters + self oneMeter).
	self assert: (self oneSecond + self twoSeconds)=(self twoSeconds + self oneSecond).
	self assert: (self oneCelsius + self twoCelsius)=(self twoCelsius + self oneCelsius)


! !!MeasureTest methodsFor: '2 - Test arithmetic operations'!test12AddAssociativity

	self assert: 
		((self oneMeter + self oneMeter) + self twoMeters) = 
		(self oneMeter + (self oneMeter + self twoMeters)).

	self assert: 
		((self oneSecond + self oneSecond) + self twoSeconds) = 
		(self oneSecond + (self oneSecond + self twoSeconds)).

	self assert: 
		((self oneCelsius + self oneCelsius) + self twoCelsius) = 
		(self oneCelsius + (self oneCelsius + self twoCelsius)).


! !!MeasureTest methodsFor: '2 - Test arithmetic operations'!test13Negated

	(Array with: self oneMeter with: self twoSeconds with: self thirtyTwoFahrenheits) do: [:aMeasure |
		self assert: aMeasure negated amount=aMeasure amount negated.
		self assert: aMeasure negated negated=aMeasure ].
	
! !!MeasureTest methodsFor: '2 - Test arithmetic operations'!test14SubtractSameUnit

	self assert: (self twoMeters - self oneMeter) = self oneMeter.
	self assert: (self oneMeter - self oneMeter) = self zeroMeters.
	self assert: (self oneMeter - self twoMeters) = self oneMeter negated.
	
	self assert: (self twoSeconds - self oneSecond) = self oneSecond.
	self assert: (self oneSecond - self oneSecond) = self zeroSeconds.
	self assert: (self oneSecond - self twoSeconds) = self oneSecond negated.
	
	self assert: (self twoCelsius - self oneCelsius) = self oneCelsius.
	self assert: (self oneCelsius - self oneCelsius) = self zeroCelsius.
	self assert: (self oneCelsius - self twoCelsius) = self oneCelsius negated.

	! !!MeasureTest methodsFor: '2 - Test arithmetic operations'!test15SubtractDifferentUnit

	self assert: (self twoMeters - self oneHundredCentimeters) = self oneMeter.
	self assert: (self oneMeter - self oneHundredCentimeters) = self zeroMeters.
	self assert: (self oneHundredCentimeters - self twoMeters) = self oneMeter negated.
	
	self assert: (self sixtyOneSeconds - self oneMinute) = self oneSecond.
	
	! !!MeasureTest methodsFor: '2 - Test arithmetic operations'!test16SubtractAssociativity

	self assert: 
		((self twoMeters - self oneMeter) - self oneMeter) = 
		(self twoMeters - (self oneMeter + self oneMeter)).

	self assert: 
		((self twoSeconds - self oneSecond) - self oneSecond) = 
		(self twoSeconds - (self oneSecond + self oneSecond)).	

	! !!MeasureTest methodsFor: '2 - Test arithmetic operations'!test17MultiplyByNumber

	self assert: self oneMeter * 1 = self oneMeter.
	self assert: self oneMeter * 2 = self twoMeters.
	self assert: self oneMeter * 0 = self zeroMeters.

	self assert: self oneSecond * 1 = self oneSecond.
	self assert: self oneSecond * 2 = self twoSeconds.
	self assert: self oneSecond * 0 = self zeroSeconds.

	self assert: self oneCelsius * 1 = self oneCelsius.
	self assert: self oneCelsius * 2 = self twoCelsius.
	self assert: self oneCelsius * 0 = self zeroCelsius.
! !!MeasureTest methodsFor: '2 - Test arithmetic operations' stamp: 'HAW 4/19/2006 17:56'!test1800MultiplicationAssociativiyByNumber

	self assert: ((self oneMeter * 2) * 5) = (self oneMeter * (2 * 5)).
	self assert: ((self oneSecond * 2) * 5) = (self oneSecond * (2 * 5)).
	self assert: ((self oneCelsius * 2) * 5) = (self oneCelsius * (2 * 5))
	
! !!MeasureTest methodsFor: '2 - Test arithmetic operations' stamp: 'HAW 4/19/2006 17:56'!test1801MultiplicationConmutativityByNumber

	self assert: (self oneMeter * 2) = (2 * self oneMeter).
	self assert: (self oneSecond * 1) = (1 * self oneSecond).
	self assert: (self oneCelsius * 0) = (0 * self oneCelsius)
	
! !!MeasureTest methodsFor: '2 - Test arithmetic operations'!test19DivisionByNumber

	self assert: (self oneMeter / 1) = self oneMeter.
	self assert: (self twoMeters / 2) = self oneMeter.

	self assert: (self oneSecond / 1) = self oneSecond.
	self assert: (self twoSeconds / 2) = self oneSecond.

	self assert: (self oneCelsius / 1) = self oneCelsius.
	self assert: (self twoCelsius / 2) = self oneCelsius.
! !!MeasureTest methodsFor: '2 - Test arithmetic operations'!test20MultipicationAndDivisionByNumber

	self assert: (self oneMeter * 10 / 10) = self oneMeter.
	self assert: (self oneMeter / 10 * 10) = self oneMeter.

	self assert: (self oneMeter * 8 / 4) = self twoMeters.
	self assert: (self oneMeter / 4 * 8) = self twoMeters.

	self assert: (self oneSecond * 10 / 10) = self oneSecond.
	self assert: (self oneSecond / 10 * 10) = self oneSecond.

	self assert: (self oneSecond * 8 / 4) = self twoSeconds.
	self assert: (self oneSecond / 4 * 8) = self twoSeconds.
	
	self assert: (self oneCelsius * 10 / 10) = self oneCelsius.
	self assert: (self oneCelsius / 10 * 10) = self oneCelsius.

	self assert: (self oneCelsius * 8 / 4) = self twoCelsius.
	self assert: (self oneCelsius / 4 * 8) = self twoCelsius.	! !!MeasureTest methodsFor: '3 - Test magnitude protocol'!test21LessThan

	self assert: self oneMeter < self twoMeters.
	self deny: self twoMeters < self oneMeter.
	
	self assert: self oneSecond < self twoSeconds.
	self deny: self twoSeconds < self oneSecond.

	self assert: self oneCelsius < self twoCelsius.
	self deny: self twoCelsius < self oneCelsius.

	"Me aseguro que funcione para distancias negativas y cero"
	self assert: self oneMeter negated < self oneMeter.
	self assert: self zeroMeters < self oneMeter.
	self deny: self zeroMeters < self oneMeter negated.
	! !!MeasureTest methodsFor: '3 - Test magnitude protocol'!test22GreaterThan

	self assert: self twoMeters > self oneMeter.
	self deny: self oneMeter > self twoMeters.
	
	self assert: self twoSeconds > self oneSecond.
	self deny: self oneSecond > self twoSeconds.

	self assert: self twoCelsius > self oneCelsius.
	self deny: self oneCelsius > self twoCelsius.

	"Me aseguro que funcione para distancias negativas y cero"
	self deny: self oneMeter negated > self oneMeter.
	self deny: self zeroMeters > self oneMeter.
	self assert: self zeroMeters > self oneMeter negated.
	! !!MeasureTest methodsFor: '3 - Test magnitude protocol'!test23LessThanEqual

	self assert: self oneMeter <= self twoMeters.
	self deny: self twoMeters <= self oneMeter.
	self assert: self oneMeter <= self oneMeter.
	
	self assert: self oneSecond <= self twoSeconds.
	self deny: self twoSeconds <= self oneSecond.
	self assert: self oneSecond <= self oneSecond.
	
	self assert: self oneCelsius <= self twoCelsius.
	self deny: self twoCelsius <= self oneCelsius.
	self assert: self oneCelsius <= self oneCelsius.
! !!MeasureTest methodsFor: '3 - Test magnitude protocol'!test24GreaterThanEqual

	self assert: self twoMeters >= self oneMeter.
	self deny: self oneMeter >= self twoMeters.
	self assert: self oneMeter >= self oneMeter.
	
	self assert: self twoSeconds >= self oneSecond.
	self deny: self oneSecond >= self twoSeconds.
	self assert: self oneSecond >= self oneSecond.

	self assert: self twoCelsius >= self oneCelsius.
	self deny: self oneCelsius >= self twoCelsius.
	self assert: self oneCelsius >= self oneCelsius.
! !!MeasureTest methodsFor: '3 - Test magnitude protocol'!test25LessThanDifferentUnit

	self assert: self oneMeter < self twoHundredCentimeters.
	self deny: self twoHundredCentimeters < self oneMeter.
	
	self assert: self oneSecond < self oneMinute.
	self deny: self oneMinute < self oneSecond.
	
	self assert: self oneCelsius negated < self thirtyTwoFahrenheits.
	self deny: self thirtyTwoFahrenheits < self oneCelsius negated! !!MeasureTest methodsFor: '3 - Test magnitude protocol'!test26GreaterThanDifferentUnits

	self assert: self twoMeters > self oneHundredCentimeters.
	self deny: self oneHundredCentimeters > self twoMeters.

	self assert: self oneMinute > self oneSecond.
	self deny: self oneSecond > self oneMinute.
	
	self assert: self twoCelsius > self thirtyTwoFahrenheits.
	self deny: self thirtyTwoFahrenheits > self twoCelsius! !!MeasureTest methodsFor: '3 - Test magnitude protocol'!test27LessThanEqualDifferentUnits

	self assert: self oneMeter <= self twoHundredCentimeters.
	self assert: self oneMeter <= self oneHundredCentimeters.

	self assert: self oneSecond <= self oneMinute.
	self assert: self oneMinute <= self sixtySeconds.
	
	self assert: self zeroCelsius <= self thirtyTwoFahrenheits.
	self assert: self thirtyTwoFahrenheits <= self oneCelsius
	
! !!MeasureTest methodsFor: '3 - Test magnitude protocol'!test28GreaterThanEqualDifferentUnit

	self assert: self twoMeters >= self oneHundredCentimeters.
	self assert: self oneMeter >= self oneHundredCentimeters.

	self assert: self oneMinute >= self oneSecond.
	self assert: self oneMinute >= self sixtySeconds.
	
	self assert: self twoCelsius >= self thirtyTwoFahrenheits.
	self assert: self thirtyTwoFahrenheits >= self oneCelsius negated! !!MeasureTest methodsFor: '3 - Test magnitude protocol'!test29Max

	self assert: (self twoMeters max: self oneMeter) = self twoMeters.
	self assert: (self oneMeter max: self twoMeters) = self twoMeters.

	self assert: (self twoSeconds max: self oneSecond) = self twoSeconds.
	self assert: (self oneSecond max: self twoSeconds) = self twoSeconds.

	self assert: (self twoCelsius max: self oneCelsius) = self twoCelsius.
	self assert: (self oneCelsius max: self twoCelsius) = self twoCelsius.
	


	
! !!MeasureTest methodsFor: '3 - Test magnitude protocol'!test30Min

	self assert: (self twoMeters min: self oneMeter) = self oneMeter.
	self assert: (self oneMeter min: self twoMeters) = self oneMeter.

	self assert: (self twoSeconds min: self oneSecond) = self oneSecond.
	self assert: (self oneSecond min: self twoSeconds) = self oneSecond.

	self assert: (self twoCelsius min: self oneCelsius) = self oneCelsius.
	self assert: (self oneCelsius min: self twoCelsius) = self oneCelsius.
	
! !!MeasureTest methodsFor: '3 - Test magnitude protocol'!test3101BetweenAnd

	self assert: (self oneMeter between: self zeroMeters and: self twoMeters).
	self deny: (self twoMeters between: self zeroMeters and: self oneMeter).

	self assert: (self oneSecond between: self zeroSeconds and: self twoSeconds).
	self deny: (self twoSeconds between: self zeroSeconds and: self oneSecond).
	
	self assert: (self oneCelsius between: self zeroCelsius and: self twoCelsius).
	self deny: (self twoCelsius between: self zeroCelsius and: self oneCelsius).

! !!MeasureTest methodsFor: '3 - Test magnitude protocol'!test3102ComparingMeasureOfDifferentDomain

	self should: [ self oneMeter < self oneSecond ] raise: self canNotConvertMeasurementException.
	self should: [ self oneMeter > self oneSecond ] raise: self canNotConvertMeasurementException.
	self should: [ self oneMeter <= self oneSecond ] raise: self canNotConvertMeasurementException.
	self should: [ self oneMeter >= self oneSecond ] raise: self canNotConvertMeasurementException.
	self should: [ self oneMeter max: self oneSecond ] raise: self canNotConvertMeasurementException.
	self should: [ self oneMeter min: self oneSecond ] raise: self canNotConvertMeasurementException.
	self should: [ self oneMeter between: self oneSecond and: self twoSeconds ] raise: self canNotConvertMeasurementException.
! !!MeasureTest methodsFor: '4 - Test interval protocol'!test32To

	self assert: (self oneMeter to: self twoMeters) from=self oneMeter.
	self assert: (self oneMeter to: self twoMeters) to=self twoMeters.
	self assert: (self oneMeter to: self twoMeters) by=self oneMeter.	

	self assert: (self oneSecond to: self twoSeconds) from=self oneSecond.
	self assert: (self oneSecond to: self twoSeconds) to=self twoSeconds.
	self assert: (self oneSecond to: self twoSeconds) by=self oneSecond.	

	self assert: (self oneCelsius to: self twoCelsius) from=self oneCelsius.
	self assert: (self oneCelsius to: self twoCelsius) to=self twoCelsius.
	self assert: (self oneCelsius to: self twoCelsius) by=self oneCelsius.	
! !!MeasureTest methodsFor: '4 - Test interval protocol'!test33ToBy

	self assert: (self zeroMeters to: (self twoMeters * 2) by: self twoMeters) from=self zeroMeters.
	self assert: (self zeroMeters to: (self twoMeters * 2) by: self twoMeters) to=(self twoMeters * 2).
	self assert: (self zeroMeters to: (self twoMeters * 2) by: self twoMeters) by=self twoMeters.

	self assert: (self zeroSeconds to: (self twoSeconds * 2) by: self twoSeconds) from=self zeroSeconds.
	self assert: (self zeroSeconds to: (self twoSeconds * 2) by: self twoSeconds) to=(self twoSeconds * 2).
	self assert: (self zeroSeconds to: (self twoSeconds * 2) by: self twoSeconds) by=self twoSeconds.

	self assert: (self zeroCelsius to: (self twoCelsius * 2) by: self twoCelsius) from=self zeroCelsius.
	self assert: (self zeroCelsius to: (self twoCelsius * 2) by: self twoCelsius) to=(self twoCelsius * 2).
	self assert: (self zeroCelsius to: (self twoCelsius * 2) by: self twoCelsius) by=self twoCelsius.
! !!MeasureTest methodsFor: '4 - Test interval protocol'!test34ToSize

	self assert: (self zeroMeters to: (self twoMeters * 2) ) size =5.
	self assert: (self zeroSeconds to: (self twoSeconds * 2) ) size =5.


! !!MeasureTest methodsFor: '4 - Test interval protocol'!test35ToDo

	| value |
	
	(Array with: self oneMeter with: self oneSecond) do: [ :aMeasurement |
		value := 1.
		(aMeasurement to: (aMeasurement * 10)) do: [ :anotherMeasurement |
			self assert: anotherMeasurement amount = value.
			value := value + 1 ].
		self assert: value = 11 ]
! !!MeasureTest methodsFor: '4 - Test interval protocol'!test36ToByDo

	| value |

	(Array with: self oneMeter with: self oneSecond) do: [ :aMeasurement |
		value := 1.
		(aMeasurement to: (aMeasurement * 10) by: (aMeasurement*2)) do: [ :anotherMeasurement |
			self assert: anotherMeasurement amount = value.
			value := value + 2 ].
		self assert: value = 11 ]
! !