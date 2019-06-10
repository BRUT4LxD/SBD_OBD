Class User.Rodzic Extends (User.Domownik, %Persistent)
{

Property Typ As %String;

Method dajSzlaban(dziecko As User.Dziecko, liczbaDni As %Integer)
{
	Write "Doigrales sie " _ dziecko.Imie _ ". Dostajesz szlaban na jedzenie przez" _ liczbaDni _ " dni"
}

Storage Default
{
<Data name="RodzicDefaultData">
<Subscript>"Rodzic"</Subscript>
<Value name="1">
<Value>Typ</Value>
</Value>
</Data>
<DefaultData>RodzicDefaultData</DefaultData>
<Type>%Library.CacheStorage</Type>
}

}
