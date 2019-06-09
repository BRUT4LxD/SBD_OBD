Class User.Kot Extends (User.Zwierze, %Persistent)
{

Method przedstawSie() As %String
{
		write " Cześć, jestem " _ ..Nazwa _ " i mówię: Miau Miau. "
}

Storage Default
{
<Type>%Library.CacheStorage</Type>
}

}
