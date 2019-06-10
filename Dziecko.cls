Class User.Dziecko Extends (User.Domownik, %Persistent)
{

Property Ksywa As %String;

Method buntujSie(rodzic As User.Rodzic, riposta As %String)
{
		Write "Powiem Ci coś " _ rodzic.Typ _ ". " _ riposta
}

Method przepros(rodzic As User.Rodzic, przeprosiny As %String)
{
		Write rodzic.Typ _ " ze względu na to, że jeszcze chciałbym korzystać z Twoich zasobów (głównie hajsu) to chciałbym Ci coś powiedzieć. " _ przeprosiny
}

Storage Default
{
<Data name="DzieckoDefaultData">
<Subscript>"Dziecko"</Subscript>
<Value name="1">
<Value>Ksywa</Value>
</Value>
</Data>
<DefaultData>DzieckoDefaultData</DefaultData>
<Type>%Library.CacheStorage</Type>
}

}
