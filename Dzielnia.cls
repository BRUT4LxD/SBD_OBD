Class User.Dzielnia Extends %Persistent
{

Property Nazwa As %String;

Relationship Domy As User.Dom [ Cardinality = many, Inverse = Dzielnia ];

Method coTamNaDzielniSlychac()
{
	Write "Otóż dzielnię " _ ..Nazwa _ " zamieszkują takie giganty jak: "
	
	for i=1:1:..Domy.Count()
	{
		set x = ..Domy.GetAt(i).Nazwa
		write x _ " "
	}
}

Storage Default
{
<Data name="DzielniaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nazwa</Value>
</Value>
</Data>
<DataLocation>^User.DzielniaD</DataLocation>
<DefaultData>DzielniaDefaultData</DefaultData>
<IdLocation>^User.DzielniaD</IdLocation>
<IndexLocation>^User.DzielniaI</IndexLocation>
<StreamLocation>^User.DzielniaS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
