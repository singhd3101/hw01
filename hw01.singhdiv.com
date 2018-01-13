server {
	listen 80;
	listen [::]:80;

	root /home/newuser/www/hw01;

	index hw01.html;

	server_name singhdiv.com hw01.singhdiv.com;

	location / {
		# First attempt to serve  request as file, then
		# as directory, then fall back to displaying a 404.
		try_files $uri $uri/ =404;
	}
}
