struct ancestry{
	pid_t target[10];
	pid_t ancestors[10];
	pid_t siblings[100];
	pid_t children[100];
};