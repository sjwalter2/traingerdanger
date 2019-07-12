var UL = argument0
var U = argument1
var UR = argument2
var L = argument3
var R = argument4
var DL = argument5
var D = argument6 
var DR = argument7

var myU = 0
var myL = 0
var myD = 0
var myR = 0

var borderSum = U+L+D+R

if(borderSum = 0)
{
	myU = 4
	myL = 4
	myD = 4
	myR = 4
}
else if(borderSum = 1)
{
	if(R)
	{
		myU = 2
		myL = 4
		myD = 3
	}
	else if(L)
	{
		myD = 2
		myR = 4
		myU = 3
	}
	else if(D)
	{
		myU = 4
		myL = 3
		myR = 2
	}
	else if(U)
	{
		myD = 4
		myL = 2
		myR = 3
	}
}
else if(borderSum = 2)
{
	if(U & D)
	{
		myL = 1
		myR = 1
	}
	else if(R & L)
	{
		myU = 1
		myD = 1
	}
	else if(R & D)
	{
		myU = 2
		myL = 3
		if(!DR)
			myD = 5		
	}
	else if(R & U)
	{
		myL = 2
		myD = 3
		if(!UR)
			myR = 7		
	}
	else if(L & U)
	{
		myD = 2
		myR = 3
		if(!UL)
			myU = 5		
	}
	else if(L & D)
	{
		myR = 2
		myU = 3
		if(!DL)
			myL = 7		
	}
}
else if(borderSum = 3)
{
	if(!D)
	{
		myD = 1
		if(!UL)
			myU = 5		
		if(!UR)
			myR = 7
	}
	else if(!R)
	{
		myR = 1
		if(!UL)
			myU = 5		
		if(!DL)
			myL = 7
	}
	else if(!U)
	{
		myU = 1
		if(!DL)
			myL = 7		
		if(!DR)
			myD = 5
	}
	else if(!L)
	{
		myL = 1
		if(!UR)
			myR = 7		
		if(!DR)
			myD = 5
	}
	
}
else if(borderSum = 4)
{
	if !UL
		myU = 5
	if !DL 
		myL = 7
	if !DR
		myD = 5
	if !UR 
		myR = 7
}
var sideArray = []
sideArray[0] = myU
sideArray[1] = myL
sideArray[2] = myD
sideArray[3] = myR
return sideArray
