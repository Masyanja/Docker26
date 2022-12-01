(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose up --build
[+] Building 2.1s (10/10) FINISHED                                                                                                                                          
 => [internal] load build definition from Dockerfile                                                                                                                   0.0s
 => => transferring dockerfile: 32B                                                                                                                                    0.0s
 => [internal] load .dockerignore                                                                                                                                      0.0s
 => => transferring context: 2B                                                                                                                                        0.0s
 => [internal] load metadata for docker.io/library/python:3.9                                                                                                          1.4s
 => [1/5] FROM docker.io/library/python:3.9@sha256:c1613835d7be322f98603f356b9e0c9d40f9589e94dc9f710e714a807a665700                                                    0.0s
 => [internal] load build context                                                                                                                                      0.1s
 => => transferring context: 8.07kB                                                                                                                                    0.0s
 => CACHED [2/5] WORKDIR /app                                                                                                                                          0.0s
 => CACHED [3/5] COPY requirements.txt .                                                                                                                               0.0s
 => CACHED [4/5] RUN python3 -m pip install --no-cache -r requirements.txt                                                                                             0.0s
 => [5/5] COPY . .                                                                                                                                                     0.4s
 => exporting to image                                                                                                                                                 0.2s
 => => exporting layers                                                                                                                                                0.1s
 => => writing image sha256:c783c96667eaaec900d72c2a8b5e90563d204316da7928afac4def85570c014e                                                                           0.0s
 => => naming to docker.io/library/26docker-web                                                                                                                        0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
[+] Running 2/2
 ⠿ Container 26docker-db-1   Running                                                                                                                                   0.0s
 ⠿ Container 26docker-web-1  Recreated                                                                                                                                 0.2s
Attaching to 26docker-db-1, 26docker-web-1
26docker-web-1  |  * Serving Flask app 'run.py'
26docker-web-1  |  * Debug mode: off
26docker-web-1  | WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
26docker-web-1  |  * Running on all addresses (0.0.0.0)
26docker-web-1  |  * Running on http://127.0.0.1:25000
26docker-web-1  |  * Running on http://172.18.0.3:25000
26docker-web-1  | Press CTRL+C to quit
26docker-db-1   | 2022-11-30 15:11:07.561 UTC [26] LOG:  checkpoint starting: time
26docker-db-1   | 2022-11-30 15:11:07.588 UTC [26] LOG:  checkpoint complete: wrote 3 buffers (0.0%); 0 WAL file(s) added, 0 removed, 0 recycled; write=0.006 s, sync=0.002 s, total=0.028 s; sync files=2, longest=0.001 s, average=0.001 s; distance=0 kB, estimate=0 kB
^CGracefully stopping... (press Ctrl+C again to force)
[+] Running 2/2
 ⠿ Container 26docker-web-1  Stopped                                                                                                                                  10.3s
 ⠿ Container 26docker-db-1   Stopped                                                                                                                                   0.5s
canceled
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % 



local2

(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose up --build
[+] Building 2.9s (11/11) FINISHED                                                                                                                                          
 => [internal] load build definition from Dockerfile                                                                                                                   0.0s
 => => transferring dockerfile: 32B                                                                                                                                    0.0s
 => [internal] load .dockerignore                                                                                                                                      0.0s
 => => transferring context: 2B                                                                                                                                        0.0s
 => [internal] load metadata for docker.io/library/python:3.9                                                                                                          2.7s
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                          0.0s
 => [1/5] FROM docker.io/library/python:3.9@sha256:c1613835d7be322f98603f356b9e0c9d40f9589e94dc9f710e714a807a665700                                                    0.0s
 => [internal] load build context                                                                                                                                      0.0s
 => => transferring context: 6.19kB                                                                                                                                    0.0s
 => CACHED [2/5] WORKDIR /app                                                                                                                                          0.0s
 => CACHED [3/5] COPY requirements.txt .                                                                                                                               0.0s
 => CACHED [4/5] RUN python3 -m pip install --no-cache -r requirements.txt                                                                                             0.0s
 => CACHED [5/5] COPY . .                                                                                                                                              0.0s
 => exporting to image                                                                                                                                                 0.0s
 => => exporting layers                                                                                                                                                0.0s
 => => writing image sha256:c783c96667eaaec900d72c2a8b5e90563d204316da7928afac4def85570c014e                                                                           0.0s
 => => naming to docker.io/library/26docker-web                                                                                                                        0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
[+] Running 2/0
 ⠿ Container 26docker-web-1  Created                                                                                                                                   0.0s
 ⠿ Container 26docker-db-1   Created                                                                                                                                   0.0s
Attaching to 26docker-db-1, 26docker-web-1
26docker-db-1   | 
26docker-db-1   | PostgreSQL Database directory appears to contain a database; Skipping initialization
26docker-db-1   | 
26docker-db-1   | 2022-11-30 15:14:15.176 UTC [1] LOG:  starting PostgreSQL 15.1 (Debian 15.1-1.pgdg110+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 10.2.1-6) 10.2.1 20210110, 64-bit
26docker-db-1   | 2022-11-30 15:14:15.178 UTC [1] LOG:  listening on IPv4 address "0.0.0.0", port 5432
26docker-db-1   | 2022-11-30 15:14:15.179 UTC [1] LOG:  listening on IPv6 address "::", port 5432
26docker-db-1   | 2022-11-30 15:14:15.189 UTC [1] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
26docker-db-1   | 2022-11-30 15:14:15.232 UTC [28] LOG:  database system was shut down at 2022-11-30 15:12:40 UTC
26docker-db-1   | 2022-11-30 15:14:15.269 UTC [1] LOG:  database system is ready to accept connections
26docker-web-1  |  * Serving Flask app 'run.py'
26docker-web-1  |  * Debug mode: off
26docker-web-1  | WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
26docker-web-1  |  * Running on all addresses (0.0.0.0)
26docker-web-1  |  * Running on http://127.0.0.1:25000
26docker-web-1  |  * Running on http://172.18.0.3:25000
26docker-web-1  | Press CTRL+C to quit
^[[A^[[A^[[A^[[B^[[B26docker-db-1   | 2022-11-30 15:19:15.236 UTC [26] LOG:  checkpoint starting: time
26docker-db-1   | 2022-11-30 15:19:15.262 UTC [26] LOG:  checkpoint complete: wrote 3 buffers (0.0%); 0 WAL file(s) added, 0 removed, 0 recycled; write=0.006 s, sync=0.003 s, total=0.027 s; sync files=2, longest=0.002 s, average=0.002 s; distance=0 kB, estimate=0 kB
26docker-db-1   | 2022-11-30 15:22:31.241 UTC [48] FATAL:  database "db_name" does not exist
26docker-web-1  | [2022-11-30 15:22:31,243] ERROR in app: Exception on /test_db [GET]
26docker-web-1  | Traceback (most recent call last):
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3361, in _wrap_pool_connect
26docker-web-1  |     return fn()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 325, in connect
26docker-web-1  |     return _ConnectionFairy._checkout(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 888, in _checkout
26docker-web-1  |     fairy = _ConnectionRecord.checkout(pool)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 491, in checkout
26docker-web-1  |     rec = pool._do_get()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
26docker-web-1  |     self._dec_overflow()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
26docker-web-1  |     compat.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
26docker-web-1  |     return self._create_connection()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 271, in _create_connection
26docker-web-1  |     return _ConnectionRecord(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 386, in __init__
26docker-web-1  |     self.__connect()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 685, in __connect
26docker-web-1  |     pool.logger.debug("Error on connect(): %s", e)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
26docker-web-1  |     compat.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 680, in __connect
26docker-web-1  |     self.dbapi_connection = connection = pool._invoke_creator(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/create.py", line 578, in connect
26docker-web-1  |     return dialect.connect(*cargs, **cparams)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/default.py", line 598, in connect
26docker-web-1  |     return self.dbapi.connect(*cargs, **cparams)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/psycopg2/__init__.py", line 122, in connect
26docker-web-1  |     conn = _connect(dsn, connection_factory=connection_factory, **kwasync)
26docker-web-1  | psycopg2.OperationalError: connection to server at "db" (172.18.0.2), port 5432 failed: FATAL:  database "db_name" does not exist
26docker-web-1  | 
26docker-web-1  | 
26docker-web-1  | The above exception was the direct cause of the following exception:
26docker-web-1  | 
26docker-web-1  | Traceback (most recent call last):
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/flask/app.py", line 2525, in wsgi_app
26docker-web-1  |     response = self.full_dispatch_request()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/flask/app.py", line 1822, in full_dispatch_request
26docker-web-1  |     rv = self.handle_user_exception(e)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/flask/app.py", line 1820, in full_dispatch_request
26docker-web-1  |     rv = self.dispatch_request()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/flask/app.py", line 1796, in dispatch_request
26docker-web-1  |     return self.ensure_sync(self.view_functions[rule.endpoint])(**view_args)
26docker-web-1  |   File "/app/views.py", line 30, in test_db
26docker-web-1  |     result = db.session.execute(
26docker-web-1  |   File "<string>", line 2, in execute
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/orm/session.py", line 1713, in execute
26docker-web-1  |     conn = self._connection_for_bind(bind)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/orm/session.py", line 1552, in _connection_for_bind
26docker-web-1  |     return self._transaction._connection_for_bind(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/orm/session.py", line 747, in _connection_for_bind
26docker-web-1  |     conn = bind.connect()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3315, in connect
26docker-web-1  |     return self._connection_cls(self, close_with_result=close_with_result)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 96, in __init__
26docker-web-1  |     else engine.raw_connection()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3394, in raw_connection
26docker-web-1  |     return self._wrap_pool_connect(self.pool.connect, _connection)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3364, in _wrap_pool_connect
26docker-web-1  |     Connection._handle_dbapi_exception_noconnection(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 2198, in _handle_dbapi_exception_noconnection
26docker-web-1  |     util.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3361, in _wrap_pool_connect
26docker-web-1  |     return fn()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 325, in connect
26docker-web-1  |     return _ConnectionFairy._checkout(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 888, in _checkout
26docker-web-1  |     fairy = _ConnectionRecord.checkout(pool)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 491, in checkout
26docker-web-1  |     rec = pool._do_get()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
26docker-web-1  |     self._dec_overflow()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
26docker-web-1  |     compat.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
26docker-web-1  |     return self._create_connection()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 271, in _create_connection
26docker-web-1  |     return _ConnectionRecord(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 386, in __init__
26docker-web-1  |     self.__connect()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 685, in __connect
26docker-web-1  |     pool.logger.debug("Error on connect(): %s", e)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
26docker-web-1  |     compat.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 680, in __connect
26docker-web-1  |     self.dbapi_connection = connection = pool._invoke_creator(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/create.py", line 578, in connect
26docker-web-1  |     return dialect.connect(*cargs, **cparams)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/default.py", line 598, in connect
26docker-web-1  |     return self.dbapi.connect(*cargs, **cparams)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/psycopg2/__init__.py", line 122, in connect
26docker-web-1  |     conn = _connect(dsn, connection_factory=connection_factory, **kwasync)
26docker-web-1  | sqlalchemy.exc.OperationalError: (psycopg2.OperationalError) connection to server at "db" (172.18.0.2), port 5432 failed: FATAL:  database "db_name" does not exist
26docker-web-1  | 
26docker-web-1  | (Background on this error at: https://sqlalche.me/e/14/e3q8)
26docker-web-1  | 172.18.0.1 - - [30/Nov/2022 15:22:31] "GET /test_db HTTP/1.1" 500 -
26docker-db-1   | 2022-11-30 15:25:00.498 UTC [54] FATAL:  database "db_name" does not exist
26docker-web-1  | [2022-11-30 15:25:00,503] ERROR in app: Exception on /test_db [GET]
26docker-web-1  | Traceback (most recent call last):
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3361, in _wrap_pool_connect
26docker-web-1  |     return fn()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 325, in connect
26docker-web-1  |     return _ConnectionFairy._checkout(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 888, in _checkout
26docker-web-1  |     fairy = _ConnectionRecord.checkout(pool)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 491, in checkout
26docker-web-1  |     rec = pool._do_get()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
26docker-web-1  |     self._dec_overflow()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
26docker-web-1  |     compat.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
26docker-web-1  |     return self._create_connection()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 271, in _create_connection
26docker-web-1  |     return _ConnectionRecord(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 386, in __init__
26docker-web-1  |     self.__connect()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 685, in __connect
26docker-web-1  |     pool.logger.debug("Error on connect(): %s", e)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
26docker-web-1  |     compat.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 680, in __connect
26docker-web-1  |     self.dbapi_connection = connection = pool._invoke_creator(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/create.py", line 578, in connect
26docker-web-1  |     return dialect.connect(*cargs, **cparams)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/default.py", line 598, in connect
26docker-web-1  |     return self.dbapi.connect(*cargs, **cparams)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/psycopg2/__init__.py", line 122, in connect
26docker-web-1  |     conn = _connect(dsn, connection_factory=connection_factory, **kwasync)
26docker-web-1  | psycopg2.OperationalError: connection to server at "db" (172.18.0.2), port 5432 failed: FATAL:  database "db_name" does not exist
26docker-web-1  | 
26docker-web-1  | 
26docker-web-1  | The above exception was the direct cause of the following exception:
26docker-web-1  | 
26docker-web-1  | Traceback (most recent call last):
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/flask/app.py", line 2525, in wsgi_app
26docker-web-1  |     response = self.full_dispatch_request()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/flask/app.py", line 1822, in full_dispatch_request
26docker-web-1  |     rv = self.handle_user_exception(e)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/flask/app.py", line 1820, in full_dispatch_request
26docker-web-1  |     rv = self.dispatch_request()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/flask/app.py", line 1796, in dispatch_request
26docker-web-1  |     return self.ensure_sync(self.view_functions[rule.endpoint])(**view_args)
26docker-web-1  |   File "/app/views.py", line 30, in test_db
26docker-web-1  |     result = db.session.execute(
26docker-web-1  |   File "<string>", line 2, in execute
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/orm/session.py", line 1713, in execute
26docker-web-1  |     conn = self._connection_for_bind(bind)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/orm/session.py", line 1552, in _connection_for_bind
26docker-web-1  |     return self._transaction._connection_for_bind(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/orm/session.py", line 747, in _connection_for_bind
26docker-web-1  |     conn = bind.connect()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3315, in connect
26docker-web-1  |     return self._connection_cls(self, close_with_result=close_with_result)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 96, in __init__
26docker-web-1  |     else engine.raw_connection()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3394, in raw_connection
26docker-web-1  |     return self._wrap_pool_connect(self.pool.connect, _connection)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3364, in _wrap_pool_connect
26docker-web-1  |     Connection._handle_dbapi_exception_noconnection(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 2198, in _handle_dbapi_exception_noconnection
26docker-web-1  |     util.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3361, in _wrap_pool_connect
26docker-web-1  |     return fn()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 325, in connect
26docker-web-1  |     return _ConnectionFairy._checkout(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 888, in _checkout
26docker-web-1  |     fairy = _ConnectionRecord.checkout(pool)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 491, in checkout
26docker-web-1  |     rec = pool._do_get()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
26docker-web-1  |     self._dec_overflow()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
26docker-web-1  |     compat.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
26docker-web-1  |     return self._create_connection()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 271, in _create_connection
26docker-web-1  |     return _ConnectionRecord(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 386, in __init__
26docker-web-1  |     self.__connect()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 685, in __connect
26docker-web-1  |     pool.logger.debug("Error on connect(): %s", e)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
26docker-web-1  |     compat.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 680, in __connect
26docker-web-1  |     self.dbapi_connection = connection = pool._invoke_creator(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/create.py", line 578, in connect
26docker-web-1  |     return dialect.connect(*cargs, **cparams)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/default.py", line 598, in connect
26docker-web-1  |     return self.dbapi.connect(*cargs, **cparams)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/psycopg2/__init__.py", line 122, in connect
26docker-web-1  |     conn = _connect(dsn, connection_factory=connection_factory, **kwasync)
26docker-web-1  | sqlalchemy.exc.OperationalError: (psycopg2.OperationalError) connection to server at "db" (172.18.0.2), port 5432 failed: FATAL:  database "db_name" does not exist
26docker-web-1  | 
26docker-web-1  | (Background on this error at: https://sqlalche.me/e/14/e3q8)
26docker-web-1  | 172.18.0.1 - - [30/Nov/2022 15:25:00] "GET /test_db HTTP/1.1" 500 -
^CGracefully stopping... (press Ctrl+C again to force)
[+] Running 2/2
 ⠿ Container 26docker-db-1   Stopped                                                                                                                                   0.3s
 ⠿ Container 26docker-web-1  Stopped                                                                                                                                  10.3s
canceled
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose up --build
[+] Building 3.5s (11/11) FINISHED                                                                                                                                          
 => [internal] load build definition from Dockerfile                                                                                                                   0.0s
 => => transferring dockerfile: 32B                                                                                                                                    0.0s
 => [internal] load .dockerignore                                                                                                                                      0.0s
 => => transferring context: 2B                                                                                                                                        0.0s
 => [internal] load metadata for docker.io/library/python:3.9                                                                                                          3.0s
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                          0.0s
 => [1/5] FROM docker.io/library/python:3.9@sha256:c1613835d7be322f98603f356b9e0c9d40f9589e94dc9f710e714a807a665700                                                    0.0s
 => [internal] load build context                                                                                                                                      0.1s
 => => transferring context: 10.62kB                                                                                                                                   0.1s
 => CACHED [2/5] WORKDIR /app                                                                                                                                          0.0s
 => CACHED [3/5] COPY requirements.txt .                                                                                                                               0.0s
 => CACHED [4/5] RUN python3 -m pip install --no-cache -r requirements.txt                                                                                             0.0s
 => [5/5] COPY . .                                                                                                                                                     0.1s
 => exporting to image                                                                                                                                                 0.1s
 => => exporting layers                                                                                                                                                0.1s
 => => writing image sha256:a8f625510cc8827db335d2a643b6f00559bef81cb7691bbe2c1be5f501044b4f                                                                           0.0s
 => => naming to docker.io/library/26docker-web                                                                                                                        0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
[+] Running 2/2
 ⠿ Container 26docker-web-1  Recreated                                                                                                                                 0.3s
 ⠿ Container 26docker-db-1   Recreated                                                                                                                                 0.4s
Attaching to 26docker-db-1, 26docker-web-1
26docker-db-1   | 
26docker-db-1   | PostgreSQL Database directory appears to contain a database; Skipping initialization
26docker-db-1   | 
26docker-db-1   | 2022-11-30 15:26:05.634 UTC [1] LOG:  starting PostgreSQL 15.1 (Debian 15.1-1.pgdg110+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 10.2.1-6) 10.2.1 20210110, 64-bit
26docker-db-1   | 2022-11-30 15:26:05.636 UTC [1] LOG:  listening on IPv4 address "0.0.0.0", port 5432
26docker-db-1   | 2022-11-30 15:26:05.636 UTC [1] LOG:  listening on IPv6 address "::", port 5432
26docker-db-1   | 2022-11-30 15:26:05.644 UTC [1] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
26docker-db-1   | 2022-11-30 15:26:05.654 UTC [28] LOG:  database system was shut down at 2022-11-30 15:25:37 UTC
26docker-db-1   | 2022-11-30 15:26:05.672 UTC [1] LOG:  database system is ready to accept connections
26docker-web-1  |  * Serving Flask app 'run.py'
26docker-web-1  |  * Debug mode: off
26docker-web-1  | WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
26docker-web-1  |  * Running on all addresses (0.0.0.0)
26docker-web-1  |  * Running on http://127.0.0.1:25000
26docker-web-1  |  * Running on http://172.18.0.3:25000
26docker-web-1  | Press CTRL+C to quit
26docker-db-1   | 2022-11-30 15:26:37.674 UTC [33] FATAL:  database "db_name" does not exist
26docker-web-1  | [2022-11-30 15:26:37,676] ERROR in app: Exception on /test_db [GET]
26docker-web-1  | Traceback (most recent call last):
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3361, in _wrap_pool_connect
26docker-web-1  |     return fn()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 325, in connect
26docker-web-1  |     return _ConnectionFairy._checkout(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 888, in _checkout
26docker-web-1  |     fairy = _ConnectionRecord.checkout(pool)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 491, in checkout
26docker-web-1  |     rec = pool._do_get()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
26docker-web-1  |     self._dec_overflow()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
26docker-web-1  |     compat.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
26docker-web-1  |     return self._create_connection()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 271, in _create_connection
26docker-web-1  |     return _ConnectionRecord(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 386, in __init__
26docker-web-1  |     self.__connect()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 685, in __connect
26docker-web-1  |     pool.logger.debug("Error on connect(): %s", e)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
26docker-web-1  |     compat.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 680, in __connect
26docker-web-1  |     self.dbapi_connection = connection = pool._invoke_creator(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/create.py", line 578, in connect
26docker-web-1  |     return dialect.connect(*cargs, **cparams)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/default.py", line 598, in connect
26docker-web-1  |     return self.dbapi.connect(*cargs, **cparams)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/psycopg2/__init__.py", line 122, in connect
26docker-web-1  |     conn = _connect(dsn, connection_factory=connection_factory, **kwasync)
26docker-web-1  | psycopg2.OperationalError: connection to server at "db" (172.18.0.2), port 5432 failed: FATAL:  database "db_name" does not exist
26docker-web-1  | 
26docker-web-1  | 
26docker-web-1  | The above exception was the direct cause of the following exception:
26docker-web-1  | 
26docker-web-1  | Traceback (most recent call last):
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/flask/app.py", line 2525, in wsgi_app
26docker-web-1  |     response = self.full_dispatch_request()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/flask/app.py", line 1822, in full_dispatch_request
26docker-web-1  |     rv = self.handle_user_exception(e)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/flask/app.py", line 1820, in full_dispatch_request
26docker-web-1  |     rv = self.dispatch_request()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/flask/app.py", line 1796, in dispatch_request
26docker-web-1  |     return self.ensure_sync(self.view_functions[rule.endpoint])(**view_args)
26docker-web-1  |   File "/app/views.py", line 30, in test_db
26docker-web-1  |     result = db.session.execute(
26docker-web-1  |   File "<string>", line 2, in execute
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/orm/session.py", line 1713, in execute
26docker-web-1  |     conn = self._connection_for_bind(bind)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/orm/session.py", line 1552, in _connection_for_bind
26docker-web-1  |     return self._transaction._connection_for_bind(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/orm/session.py", line 747, in _connection_for_bind
26docker-web-1  |     conn = bind.connect()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3315, in connect
26docker-web-1  |     return self._connection_cls(self, close_with_result=close_with_result)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 96, in __init__
26docker-web-1  |     else engine.raw_connection()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3394, in raw_connection
26docker-web-1  |     return self._wrap_pool_connect(self.pool.connect, _connection)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3364, in _wrap_pool_connect
26docker-web-1  |     Connection._handle_dbapi_exception_noconnection(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 2198, in _handle_dbapi_exception_noconnection
26docker-web-1  |     util.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/base.py", line 3361, in _wrap_pool_connect
26docker-web-1  |     return fn()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 325, in connect
26docker-web-1  |     return _ConnectionFairy._checkout(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 888, in _checkout
26docker-web-1  |     fairy = _ConnectionRecord.checkout(pool)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 491, in checkout
26docker-web-1  |     rec = pool._do_get()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
26docker-web-1  |     self._dec_overflow()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
26docker-web-1  |     compat.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
26docker-web-1  |     return self._create_connection()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 271, in _create_connection
26docker-web-1  |     return _ConnectionRecord(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 386, in __init__
26docker-web-1  |     self.__connect()
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 685, in __connect
26docker-web-1  |     pool.logger.debug("Error on connect(): %s", e)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
26docker-web-1  |     compat.raise_(
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/util/compat.py", line 210, in raise_
26docker-web-1  |     raise exception
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/pool/base.py", line 680, in __connect
26docker-web-1  |     self.dbapi_connection = connection = pool._invoke_creator(self)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/create.py", line 578, in connect
26docker-web-1  |     return dialect.connect(*cargs, **cparams)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/sqlalchemy/engine/default.py", line 598, in connect
26docker-web-1  |     return self.dbapi.connect(*cargs, **cparams)
26docker-web-1  |   File "/usr/local/lib/python3.9/site-packages/psycopg2/__init__.py", line 122, in connect
26docker-web-1  |     conn = _connect(dsn, connection_factory=connection_factory, **kwasync)
26docker-web-1  | sqlalchemy.exc.OperationalError: (psycopg2.OperationalError) connection to server at "db" (172.18.0.2), port 5432 failed: FATAL:  database "db_name" does not exist
26docker-web-1  | 
26docker-web-1  | (Background on this error at: https://sqlalche.me/e/14/e3q8)
26docker-web-1  | 172.18.0.1 - - [30/Nov/2022 15:26:37] "GET /test_db HTTP/1.1" 500 -
26docker-db-1   | 2022-11-30 15:39:02.621 UTC [26] LOG:  checkpoint starting: time
26docker-db-1   | 2022-11-30 15:39:03.254 UTC [26] LOG:  checkpoint complete: wrote 3 buffers (0.0%); 0 WAL file(s) added, 0 removed, 0 recycled; write=0.064 s, sync=0.311 s, total=1.914 s; sync files=2, longest=0.289 s, average=0.156 s; distance=0 kB, estimate=0 kB


local 3

(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose ps
NAME                COMMAND                  SERVICE             STATUS              PORTS
26docker-db-1       "docker-entrypoint.s…"   db                  running             5432/tcp
26docker-web-1      "sh entrypoint.sh"       web                 running             0.0.0.0:80->25000/tcp
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose exec web sh
# ls
Dockerfile  __pycache__  builder.py  db.py                entrypoint.sh  models.py         run.py       views.py
README.md   app.py       data        docker-compose.yaml  functions.py   requirements.txt  terminal.md
# ^C
# 
# ^C
# ^C
# 
# %                                                                                                                                                                         (venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose ps         
NAME                COMMAND                  SERVICE             STATUS              PORTS
26docker-db-1       "docker-entrypoint.s…"   db                  running             5432/tcp
26docker-web-1      "sh entrypoint.sh"       web                 running             0.0.0.0:80->25000/tcp
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % 


(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose up --build --remove-orphans
[+] Building 3.8s (11/11) FINISHED                                                                                                                                          
 => [internal] load build definition from Dockerfile                                                                                                                   0.0s
 => => transferring dockerfile: 32B                                                                                                                                    0.0s
 => [internal] load .dockerignore                                                                                                                                      0.0s
 => => transferring context: 2B                                                                                                                                        0.0s
 => [internal] load metadata for docker.io/library/python:3.9                                                                                                          3.3s
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                          0.0s
 => [1/5] FROM docker.io/library/python:3.9@sha256:c1613835d7be322f98603f356b9e0c9d40f9589e94dc9f710e714a807a665700                                                    0.0s
 => [internal] load build context                                                                                                                                      0.1s
 => => transferring context: 68.98kB                                                                                                                                   0.0s
 => CACHED [2/5] WORKDIR /app                                                                                                                                          0.0s
 => CACHED [3/5] COPY requirements.txt .                                                                                                                               0.0s
 => CACHED [4/5] RUN python3 -m pip install --no-cache -r requirements.txt                                                                                             0.0s
 => [5/5] COPY . .                                                                                                                                                     0.2s
 => exporting to image                                                                                                                                                 0.1s
 => => exporting layers                                                                                                                                                0.1s
 => => writing image sha256:0773747e562c62f409b151b1fb4254c7225ac704f06d5c6452525518cdf4b352                                                                           0.0s
 => => naming to docker.io/library/26docker-web                                                                                                                        0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
[+] Running 2/2
 ⠿ Container 26docker-db-1   Running                                                                                                                                   0.0s
 ⠿ Container 26docker-web-1  Recreated                                                                                                                                10.7s
Attaching to 26docker-db-1, 26docker-web-1
26docker-web-1  |  * Serving Flask app 'run.py'
26docker-web-1  |  * Debug mode: off
26docker-web-1  | WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
26docker-web-1  |  * Running on all addresses (0.0.0.0)
26docker-web-1  |  * Running on http://127.0.0.1:25000
26docker-web-1  |  * Running on http://172.18.0.3:25000
26docker-web-1  | Press CTRL+C to quit

(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose up --build

[+] Building 2.5s (11/11) FINISHED                                                                                                                                          
 => [internal] load build definition from Dockerfile                                                                                                                   0.0s
 => => transferring dockerfile: 32B                                                                                                                                    0.0s
 => [internal] load .dockerignore                                                                                                                                      0.0s
 => => transferring context: 2B                                                                                                                                        0.0s
 => [internal] load metadata for docker.io/library/python:3.9                                                                                                          2.3s
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                          0.0s
 => [internal] load build context                                                                                                                                      0.1s
 => => transferring context: 6.22kB                                                                                                                                    0.0s
 => [1/5] FROM docker.io/library/python:3.9@sha256:c1613835d7be322f98603f356b9e0c9d40f9589e94dc9f710e714a807a665700                                                    0.0s
 => CACHED [2/5] WORKDIR /app                                                                                                                                          0.0s
 => CACHED [3/5] COPY requirements.txt .                                                                                                                               0.0s
 => CACHED [4/5] RUN python3 -m pip install --no-cache -r requirements.txt                                                                                             0.0s
 => CACHED [5/5] COPY . .                                                                                                                                              0.0s
 => exporting to image                                                                                                                                                 0.0s
 => => exporting layers                                                                                                                                                0.0s
 => => writing image sha256:767b93655eacde64aa5609c1a810ef80d4853154904f8842ed5de92166befa03                                                                           0.0s
 => => naming to docker.io/library/26docker-web                                                                                                                        0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
[+] Running 2/2
 ⠿ Container 26docker-db-1   Created                                                                                                                                   0.0s
 ⠿ Container 26docker-web-1  Created                                                                                                                                   0.0s
Attaching to 26docker-db-1, 26docker-web-1
26docker-db-1   | 
26docker-db-1   | PostgreSQL Database directory appears to contain a database; Skipping initialization
26docker-db-1   | 
26docker-db-1   | 2022-11-30 21:03:08.498 UTC [1] LOG:  starting PostgreSQL 15.1 (Debian 15.1-1.pgdg110+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 10.2.1-6) 10.2.1 20210110, 64-bit
26docker-db-1   | 2022-11-30 21:03:08.499 UTC [1] LOG:  listening on IPv4 address "0.0.0.0", port 5432
26docker-db-1   | 2022-11-30 21:03:08.500 UTC [1] LOG:  listening on IPv6 address "::", port 5432
26docker-db-1   | 2022-11-30 21:03:08.504 UTC [1] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
26docker-db-1   | 2022-11-30 21:03:08.553 UTC [27] LOG:  database system was shut down at 2022-11-30 21:02:47 UTC
26docker-db-1   | 2022-11-30 21:03:08.566 UTC [1] LOG:  database system is ready to accept connections
26docker-web-1  |  * Serving Flask app 'run.py'
26docker-web-1  |  * Debug mode: off
26docker-web-1  | WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
26docker-web-1  |  * Running on all addresses (0.0.0.0)
26docker-web-1  |  * Running on http://127.0.0.1:25000
26docker-web-1  |  * Running on http://172.18.0.3:25000
26docker-web-1  | Press CTRL+C to quit


