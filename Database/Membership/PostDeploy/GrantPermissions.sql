GRANT CONNECT TO [webProcessRole]

GO
GRANT 
	EXECUTE, 
	SELECT,
	INSERT,
	UPDATE,
	DELETE, 
	VIEW DEFINITION ON 
Schema::[dbo] TO [webProcessRole];

GO
GRANT 
	EXECUTE, 
	SELECT,
	INSERT,
	UPDATE,
	DELETE, 
	VIEW DEFINITION ON 
Schema::[membership] TO [webProcessRole];

GO
GRANT 
	EXECUTE, 
	SELECT,
	INSERT,
	UPDATE,
	DELETE, 
	VIEW DEFINITION ON 
Schema::[logs] TO [webProcessRole];

GO
EXEC sp_addrolemember 'webProcessRole', 'webProcessUser';