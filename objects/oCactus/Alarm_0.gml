

ini_open("checkpoint.ini");

ini_write_real("throwable", "stock", obj_throwable.stock);

ini_close();

instance_destroy();

slide_transition(TRANS_MODE.GOTO,room)

