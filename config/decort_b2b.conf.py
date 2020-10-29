[program:decort_shop_b2b]
command=/home/prog/www/decort_shop_b2b/oscar/bin/gunicorn decort_b2b.wsgi:application -c /home/prog/www/decort_shop_b2b/config/gunicorn.conf.py
directory=/home/prog/www/decort_shop_b2b
user=prog
autorestart=true
redirect_stderr=true
stdout_logfile = /home/prog/www/decort_shop_b2b/logs/debug.log