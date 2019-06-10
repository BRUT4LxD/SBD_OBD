Class User.Kot Extends (User.Zwierze, %Persistent)
{

Method przedstawSie()
{
		write " Cześć, jestem " _ ..Nazwa _ " i mówię: Miau Miau. "
}

Storage Default
{
<Type>%Library.CacheStorage</Type>
}

}
