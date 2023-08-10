//bloomIntensity = bloomIntensity + 5;
suma += veloc;

if (suma == 1) veloc =-veloc;

if (suma < 0) veloc = 0.05;
/*
if (suma >= 0.0)

{
	veloc = -veloc;
}

if (suma < 0.0)

{

	veloc = veloc;

}
*/

//suma = suma - 0.01;

//if (suma == (-1))
//{
//suma = suma + 0.01;
//suma = suma + 0.5;

//}

//if (suma == (-1))
//{
//suma = suma + 0.01;	
//}

y = ystart + sin(get_timer()/500000)*10;