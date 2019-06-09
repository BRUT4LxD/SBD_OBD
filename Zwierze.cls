Class User.Zwierze Extends %Persistent [ Abstract ]
{

Relationship Dom As User.Dom [ Cardinality = one, Inverse = Zwierzeta ];

Property Nazwa As %String;

Method przedstawSie() As %String
{
	write " Z tej strony: " + ..Nazwa
}

Storage Default
{
<Data name="ZwierzeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Dom</Value>
</Value>
<Value name="3">
<Value>Nazwa</Value>
</Value>
</Data>
<DataLocation>^User.ZwierzeD</DataLocation>
<DefaultData>ZwierzeDefaultData</DefaultData>
<IdLocation>^User.ZwierzeD</IdLocation>
<IndexLocation>^User.ZwierzeI</IndexLocation>
<StreamLocation>^User.ZwierzeS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
