(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker build .
[+] Building 2.9s (9/10)                                                                                                                                                    
 => ERROR [4/5] RUN pythron3 -m pip install --no-cache -r requirements.txt                                                                                             0.4s
------
 > [4/5] RUN pythron3 -m pip install --no-cache -r requirements.txt:
#9 0.382 /bin/sh: 1: pythron3: not found
------
executor failed running [/bin/sh -c pythron3 -m pip install --no-cache -r requirements.txt]: exit code: 127
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker build .
[+] Building 1.4s (10/10) FINISHED                                                                                                                                          
 => CACHED [4/5] RUN python3 -m pip install --no-cache -r requirements.txt                                                                                             0.0s
 => [5/5] COPY . .                                                                                                                                                     0.1s
 => exporting to image                                                                                                                                                 0.1s
 => => exporting layers                                                                                                                                                0.1s
 => => writing image sha256:8ed358baa38a0fd484f1264e65c055deba2645424600b32df7982f5739f47597                                                                           0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker build -t mkoliada .
[+] Building 1.1s (10/10) FINISHED                                                                                                                                          
 => => exporting layers                                                                                                                                                0.0s
 => => writing image sha256:8ed358baa38a0fd484f1264e65c055deba2645424600b32df7982f5739f47597                                                                           0.0s
 => => naming to docker.io/library/mkoliada                                                                                                                            0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker run -p 80:25000 mkoliada
 * Serving Flask app 'app' (lazy loading)
 * Environment: production
   WARNING: This is a development server. Do not use it in a production deployment.
   Use a production WSGI server instead.
 * Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on http://127.0.0.1:25000
Press CTRL+C to quit



(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker build -t mkoliada .
[+] Building 2.3s (11/11) FINISHED                                                                                                                                          
 => CACHED [4/5] RUN python3 -m pip install --no-cache -r requirements.txt                                                                                             0.0s
 => [5/5] COPY . .                                                                                                                                                     0.1s
 => exporting to image                                                                                                                                                 0.1s
 => => exporting layers                                                                                                                                                0.0s
 => => writing image sha256:ce7b21b532bafcec3f4dbd59b8c0365d4315144cea7f84f1fe2eb70a25f0d9d8                                                                           0.0s
 => => naming to docker.io/library/mkoliada                                                                                                                            0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker run -p 80:25000 mkoliada
 * Serving Flask app 'app' (lazy loading)
 * Environment: production
   WARNING: This is a development server. Do not use it in a production deployment.
   Use a production WSGI server instead.
 * Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on all addresses (0.0.0.0)
 * Running on http://127.0.0.1:25000
 * Running on http://172.17.0.4:25000
Press CTRL+C to quit
c




Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
[+] Running 1/1
 ⠿ Container 26docker-web-1  Recreated                                                                                                                                10.4s
Attaching to 26docker-web-1
26docker-web-1  |  * Serving Flask app 'app' (lazy loading)
26docker-web-1  |  * Environment: production
26docker-web-1  |    WARNING: This is a development server. Do not use it in a production deployment.
26docker-web-1  |    Use a production WSGI server instead.
26docker-web-1  |  * Debug mode: off
26docker-web-1  | WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
26docker-web-1  |  * Running on http://127.0.0.1:25000
26docker-web-1  | Press CTRL+C to quit

Error: While importing 'app.run', an ImportError was raised.
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose up --build
[+] Building 4.7s (11/11) FINISHED                                                                                                                                          
 => [internal] load build definition from Dockerfile                                                                                                                   0.0s



(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose up --build --remove-orphans
[+] Building 2.4s (10/10) FINISHED                                                                                                                                          

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
[+] Running 1/1
 ⠿ Container 26docker-web-1  Recreated                                                                                                                                 0.3s
Attaching to 26docker-web-1
26docker-web-1  |  * Serving Flask app 'run.py' (lazy loading)
26docker-web-1  |  * Environment: production
26docker-web-1  |    WARNING: This is a development server. Do not use it in a production deployment.
26docker-web-1  |    Use a production WSGI server instead.
26docker-web-1  |  * Debug mode: off
26docker-web-1  | Usage: flask run [OPTIONS]
26docker-web-1  | Try 'flask run --help' for help.
26docker-web-1  | 
26docker-web-1  | Error: While importing 'app.run', an ImportError was raised.
26docker-web-1 exited with code 2
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % 


~~(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose exec web sh #
service "web" is not running container #1
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose exec web sh  
service "web" is not running container #1
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % pip install flask-sqlalchemy psycopg2
Collecting flask-sqlalchemy
  Using cached Flask_SQLAlchemy-3.0.2-py3-none-any.whl (24 kB)
Collecting psycopg2
  Downloading psycopg2-2.9.5.tar.gz (384 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 384.3/384.3 kB 1.8 MB/s eta 0:00:00
  Preparing metadata (setup.py) ... error
  error: subprocess-exited-with-error
  
  × python setup.py egg_info did not run successfully.
  │ exit code: 1
  ╰─> [25 lines of output]
      /Users/kolyada/coursework3/venv/lib/python3.10/site-packages/setuptools/config/setupcfg.py:508: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
        warnings.warn(msg, warning_class)
      running egg_info
      creating /private/var/folders/z2/hbg2ppg55yx9g3h7vyrs_c440000gn/T/pip-pip-egg-info-b2r8imfa/psycopg2.egg-info
      writing /private/var/folders/z2/hbg2ppg55yx9g3h7vyrs_c440000gn/T/pip-pip-egg-info-b2r8imfa/psycopg2.egg-info/PKG-INFO
      writing dependency_links to /private/var/folders/z2/hbg2ppg55yx9g3h7vyrs_c440000gn/T/pip-pip-egg-info-b2r8imfa/psycopg2.egg-info/dependency_links.txt
      writing top-level names to /private/var/folders/z2/hbg2ppg55yx9g3h7vyrs_c440000gn/T/pip-pip-egg-info-b2r8imfa/psycopg2.egg-info/top_level.txt
      writing manifest file '/private/var/folders/z2/hbg2ppg55yx9g3h7vyrs_c440000gn/T/pip-pip-egg-info-b2r8imfa/psycopg2.egg-info/SOURCES.txt'
      
      Error: pg_config executable not found.
      
      pg_config is required to build psycopg2 from source.  Please add the directory
      containing pg_config to the $PATH or specify the full executable path with the
      option:
      
          python setup.py build_ext --pg-config /path/to/pg_config build ...
      
      or with the pg_config option in 'setup.cfg'.
      
      If you prefer to avoid building psycopg2 from source, please install the PyPI
      'psycopg2-binary' package instead.
      
      For further information please check the 'doc/src/install.rst' file (also at
      <https://www.psycopg.org/docs/install.html>).
      
      [end of output]
  
  note: This error originates from a subprocess, and is likely not a problem with pip.
error: metadata-generation-failed

× Encountered error while generating package metadata.
╰─> See above for output.

note: This is an issue with the package mentioned above, not pip.
hint: See above for details.

[notice] A new release of pip available: 22.3 -> 22.3.1
[notice] To update, run: pip install --upgrade pip
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % pip install --upgrade pip
Requirement already satisfied: pip in /Users/kolyada/coursework3/venv/lib/python3.10/site-packages (22.3)
Collecting pip
  Using cached pip-22.3.1-py3-none-any.whl (2.1 MB)
Installing collected packages: pip
  Attempting uninstall: pip
    Found existing installation: pip 22.3
    Uninstalling pip-22.3:
      Successfully uninstalled pip-22.3
Successfully installed pip-22.3.1
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % pip install flask-sqlalchemy psycopg2
Collecting flask-sqlalchemy
  Using cached Flask_SQLAlchemy-3.0.2-py3-none-any.whl (24 kB)
Collecting psycopg2
  Using cached psycopg2-2.9.5.tar.gz (384 kB)
  Preparing metadata (setup.py) ... error
  error: subprocess-exited-with-error
  
  × python setup.py egg_info did not run successfully.
  │ exit code: 1
  ╰─> [25 lines of output]
      /Users/kolyada/coursework3/venv/lib/python3.10/site-packages/setuptools/config/setupcfg.py:508: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
        warnings.warn(msg, warning_class)
      running egg_info
      creating /private/var/folders/z2/hbg2ppg55yx9g3h7vyrs_c440000gn/T/pip-pip-egg-info-urfsoyao/psycopg2.egg-info
      writing /private/var/folders/z2/hbg2ppg55yx9g3h7vyrs_c440000gn/T/pip-pip-egg-info-urfsoyao/psycopg2.egg-info/PKG-INFO
      writing dependency_links to /private/var/folders/z2/hbg2ppg55yx9g3h7vyrs_c440000gn/T/pip-pip-egg-info-urfsoyao/psycopg2.egg-info/dependency_links.txt
      writing top-level names to /private/var/folders/z2/hbg2ppg55yx9g3h7vyrs_c440000gn/T/pip-pip-egg-info-urfsoyao/psycopg2.egg-info/top_level.txt

× Encountered error while generating package metadata.
╰─> See above for output.

note: This is an issue with the package mentioned above, not pip.
hint: See above for details.
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % pip install flask-sqlalchemy psycopg2-binary
Collecting flask-sqlalchemy
  Using cached Flask_SQLAlchemy-3.0.2-py3-none-any.whl (24 kB)
Collecting psycopg2-binary
  Downloading psycopg2_binary-2.9.5-cp310-cp310-macosx_10_15_x86_64.macosx_10_9_intel.macosx_10_9_x86_64.macosx_10_10_intel.macosx_10_10_x86_64.whl (2.2 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.2/2.2 MB 3.3 MB/s eta 0:00:00
Collecting SQLAlchemy>=1.4.18
  Using cached SQLAlchemy-1.4.44-cp310-cp310-macosx_10_15_x86_64.whl (1.6 MB)
Collecting Flask>=2.2
  Using cached Flask-2.2.2-py3-none-any.whl (101 kB)
Requirement already satisfied: itsdangerous>=2.0 in /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages (from Flask>=2.2->flask-sqlalchemy) (2.1.2)
Requirement already satisfied: Werkzeug>=2.2.2 in /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages (from Flask>=2.2->flask-sqlalchemy) (2.2.2)
Requirement already satisfied: click>=8.0 in /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages (from Flask>=2.2->flask-sqlalchemy) (8.1.3)
Requirement already satisfied: Jinja2>=3.0 in /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages (from Flask>=2.2->flask-sqlalchemy) (3.1.2)
Collecting greenlet!=0.4.17
  Using cached greenlet-2.0.1-cp310-cp310-macosx_10_15_x86_64.whl (203 kB)
Requirement already satisfied: MarkupSafe>=2.0 in /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages (from Jinja2>=3.0->Flask>=2.2->flask-sqlalchemy) (2.1.1)
Installing collected packages: psycopg2-binary, greenlet, SQLAlchemy, Flask, flask-sqlalchemy
  Attempting uninstall: Flask
    Found existing installation: Flask 2.0.2
    Not uninstalling flask at /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages, outside environment /Users/kolyada/coursework3/venv
    Can't uninstall 'Flask'. No files were found to uninstall.
Successfully installed Flask-2.2.2 SQLAlchemy-1.4.44 flask-sqlalchemy-3.0.2 greenlet-2.0.1 psycopg2-binary-2.9.5
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % 
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose exec web sh #
service "web" is not running container #1
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose exec web sh  
service "web" is not running container #1
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % pip install flask-sqlalchemy psycopg2
Collecting flask-sqlalchemy
  Using cached Flask_SQLAlchemy-3.0.2-py3-none-any.whl (24 kB)
Collecting psycopg2
  Downloading psycopg2-2.9.5.tar.gz (384 kB)~~
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 384.3/384.3 kB 1.8 MB/s eta 0:00:00
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % pip install flask-sqlalchemy psycopg2-binary
Collecting flask-sqlalchemy
  Using cached Flask_SQLAlchemy-3.0.2-py3-none-any.whl (24 kB)
Collecting psycopg2-binary
  Downloading psycopg2_binary-2.9.5-cp310-cp310-macosx_10_15_x86_64.macosx_10_9_intel.macosx_10_9_x86_64.macosx_10_10_intel.macosx_10_10_x86_64.whl (2.2 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.2/2.2 MB 3.3 MB/s eta 0:00:00
Collecting SQLAlchemy>=1.4.18
  Using cached SQLAlchemy-1.4.44-cp310-cp310-macosx_10_15_x86_64.whl (1.6 MB)
Collecting Flask>=2.2
  Using cached Flask-2.2.2-py3-none-any.whl (101 kB)
Requirement already satisfied: itsdangerous>=2.0 in /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages (from Flask>=2.2->flask-sqlalchemy) (2.1.2)
Requirement already satisfied: Werkzeug>=2.2.2 in /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages (from Flask>=2.2->flask-sqlalchemy) (2.2.2)
Requirement already satisfied: click>=8.0 in /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages (from Flask>=2.2->flask-sqlalchemy) (8.1.3)
Requirement already satisfied: Jinja2>=3.0 in /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages (from Flask>=2.2->flask-sqlalchemy) (3.1.2)
Collecting greenlet!=0.4.17
  Using cached greenlet-2.0.1-cp310-cp310-macosx_10_15_x86_64.whl (203 kB)
Requirement already satisfied: MarkupSafe>=2.0 in /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages (from Jinja2>=3.0->Flask>=2.2->flask-sqlalchemy) (2.1.1)
Installing collected packages: psycopg2-binary, greenlet, SQLAlchemy, Flask, flask-sqlalchemy
  Attempting uninstall: Flask
    Found existing installation: Flask 2.0.2
    Not uninstalling flask at /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages, outside environment /Users/kolyada/coursework3/venv
    Can't uninstall 'Flask'. No files were found to uninstall.
Successfully installed Flask-2.2.2 SQLAlchemy-1.4.44 flask-sqlalchemy-3.0.2 greenlet-2.0.1 psycopg2-binary-2.9.5
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker-compose up --build --remove-orphans
[+] Building 36.7s (9/10)                                                                                                                                                   
 => [internal] load build definition from Dockerfile  




