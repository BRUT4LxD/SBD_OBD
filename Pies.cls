Class User.Pies Extends (User.Zwierze, %Persistent)
{

Method przedstawSie() As %String
{
		write " Cześć, jestem " _ ..Nazwa _ " i mówię: Hau hau. "
}

Storage Default
{
<Type>%Library.CacheStorage</Type>
}

}
