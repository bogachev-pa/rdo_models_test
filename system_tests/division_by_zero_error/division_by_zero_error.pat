

$Pattern Образец_обслуживания_клиента : operation
$Relevant_resources
	_Парикмахерская: Парикмахерская Keep Keep
$Time = Длительность_обслуживания( 20, 40 )
$Body
_Парикмахерская
	Choice from _Парикмахерская.состояние_парикмахера == Свободен and _Парикмахерская.количество_в_очереди / 2 == 1
	Convert_begin
		количество_в_очереди  = _Парикмахерская.количество_в_очереди - 1;
		состояние_парикмахера = Занят;
	Convert_end
		состояние_парикмахера  = Свободен;
		количество_обслуженных = _Парикмахерская.количество_обслуженных + 1;
$End
