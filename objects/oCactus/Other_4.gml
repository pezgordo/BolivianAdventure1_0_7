/// @desc AUTO SAVE

//Overwrite old save
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

//Create new save
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file, room);
file_text_close(file);



//CHECKPOINT

if (file_exists("checkpoint.ini"))
	{
		
		
		
		ini_open("checkpoint.ini");
	
		x = ini_read_real("player", "x", x);
		y = ini_read_real("player", "y", y) - 10;
		
		obj_throwable.stock = ini_read_real("throwable", "stock", obj_throwable.stock);
		
		//vidas = ini_read_real("health", "vidas", vidas);
		
		//cruz_andina = ini_read_real("pickups", "cruz_andina", cruz_andina);
		coins = ini_read_real("pickups", "monedas", coins);
		
		cruz3_1 = ini_read_real("pickups", "cruz_andina_1", cruz3_1);
		cruz3_2 = ini_read_real("pickups", "cruz_andina_2", cruz3_2);
		cruz3_3 = ini_read_real("pickups", "cruz_andina_3", cruz3_3);
		cruz3_4 = ini_read_real("pickups", "cruz_andina_4", cruz3_4);
		
		///// HOW MANY KEYS ARE IN SECTION
		
		var section_name = "idstodestroy";
		
		var key_count = 0;
		
		// Check if the section exists
		
		
		if (ini_section_exists(section_name))
		{
		    // Iterate through the keys in the section
		    var i = 0;
		    while (ini_key_exists(section_name, "ids_" + string(i)))
		    {
		        key_count += 1;
		        i += 1;
		    }
		}
		
		//show_message("The " + section_name + " section has " + string(key_count) + " keys.");

	
	
		// Iterar a través de las claves del archivo INI
		
		for (var ii = 0; ii < key_count; ii++) 
			{
				var inst_id = ini_read_real(section_name, "ids_" + string(ii), -1);
				//var inst_id = ini_read_real(section_name, string(ii), -1);
    
			    // Verificar si existe la instancia
			    if (instance_exists(inst_id)) 
					{
						instance_destroy(inst_id);
					 }
			}
		//CERRAR ARCHIVO INI
		ini_close();
	

	
}


