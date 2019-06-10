Class User.Dom Extends %Persistent
{

Property LiczbaNiezbitychOkien As %Integer;

Property Nazwa As %String;

Property Adres As User.Adres;

Relationship Domownicy As User.Domownik [ Cardinality = many, Inverse = Dom ];

Relationship Zwierzeta As User.Zwierze [ Cardinality = many, Inverse = Dom ];

Relationship Dzielnia As User.Dzielnia [ Cardinality = one, Inverse = Domy ];

Method przedstawDomownikow()
{
	for i=1:1:..Domownicy.Count()
	{
		do ..Domownicy.GetAt(i).przedstawSie()
	}
}

Method przedstawDom() As %String
{
	do ..Adres.przedstawAdres(..Nazwa)
	write "A teraz domownicy... możecie się przedstawić. "
	do ..przedstawDomownikow()
	write "Zaskakujące jest to, że liczba niezbitych okien na tych włościach wynosi: " _ ..LiczbaNiezbitychOkien
}

Method przedstawZwierzeta() As %String
{
	for i=1:1:..Zwierzeta.Count()
	{
		do ..Zwierzeta.GetAt(i).przedstawSie()
	}
}

Storage Default
{
<Data name="DomDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>LiczbaNiezbitychOkien</Value>
</Value>
<Value name="3">
<Value>Nazwa</Value>
</Value>
<Value name="4">
<Value>Adres</Value>
</Value>
<Value name="5">
<Value>Dzielnia</Value>
</Value>
</Data>
<DataLocation>^User.DomD</DataLocation>
<DefaultData>DomDefaultData</DefaultData>
<IdLocation>^User.DomD</IdLocation>
<IndexLocation>^User.DomI</IndexLocation>
<StreamLocation>^User.DomS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
