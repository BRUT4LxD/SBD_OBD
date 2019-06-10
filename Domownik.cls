Class User.Domownik Extends %Persistent [ Abstract ]
{

Relationship Dom As User.Dom [ Cardinality = one, Inverse = Domownicy ];

Property Imie As %String;

Property Nazwisko As %String;

Property Wiek As %Integer;

Method przedstawSie()
{
		write "Cześć! Jestem " _ ..Imie _ " " _ ..Nazwisko _ " oraz mam " _ ..Wiek _ " lat na karku."
}

Storage Default
{
<Data name="DomownikDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Dom</Value>
</Value>
<Value name="3">
<Value>Imie</Value>
</Value>
<Value name="4">
<Value>Nazwisko</Value>
</Value>
<Value name="5">
<Value>Wiek</Value>
</Value>
</Data>
<DataLocation>^User.DomownikD</DataLocation>
<DefaultData>DomownikDefaultData</DefaultData>
<IdLocation>^User.DomownikD</IdLocation>
<IndexLocation>^User.DomownikI</IndexLocation>
<StreamLocation>^User.DomownikS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
