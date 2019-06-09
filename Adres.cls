Class User.Adres Extends %Persistent
{

Property Ulica As %String;

Property Numer As %Integer;

Property Miasto As %String;

Method przedstawAdres(Nazwa As %String)
{
	Write "W mieście zwanym " _ ..Miasto _ " na " _ ..Ulica _ " " _ ..Numer _ " stoi właśnie ta chałupa, którą ktoś nazwał " _ Nazwa
}

Storage Default
{
<Data name="AdresDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Ulica</Value>
</Value>
<Value name="3">
<Value>Numer</Value>
</Value>
<Value name="4">
<Value>Miasto</Value>
</Value>
<Value name="5">
<Value>Dom</Value>
</Value>
</Data>
<DataLocation>^User.AdresD</DataLocation>
<DefaultData>AdresDefaultData</DefaultData>
<IdLocation>^User.AdresD</IdLocation>
<IndexLocation>^User.AdresI</IndexLocation>
<StreamLocation>^User.AdresS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
