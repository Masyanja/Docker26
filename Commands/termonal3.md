(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker build -t masyanja/hosting:lastest -t masyanja/hosting:v0.1.0 .
[+] Building 3.3s (11/11) FINISHED                                                                                                                                          
 => [internal] load build definition from Dockerfile                                                                                                                   0.1s
 => => transferring dockerfile: 37B                                                                                                                                    0.0s
 => [internal] load .dockerignore                                                                                                                                      0.0s
 => => transferring context: 2B                                                                                                                                        0.0s
 => [internal] load metadata for docker.io/library/python:3.9                                                                                                          2.6s
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                          0.0s
 => [1/5] FROM docker.io/library/python:3.9@sha256:c1613835d7be322f98603f356b9e0c9d40f9589e94dc9f710e714a807a665700                                                    0.0s
 => [internal] load build context                                                                                                                                      0.2s
 => => transferring context: 105.78kB                                                                                                                                  0.1s
 => CACHED [2/5] WORKDIR /app                                                                                                                                          0.0s
 => CACHED [3/5] COPY requirements.txt .                                                                                                                               0.0s
 => CACHED [4/5] RUN python3 -m pip install --no-cache -r requirements.txt                                                                                             0.0s
 => [5/5] COPY . .                                                                                                                                                     0.2s
 => exporting to image                                                                                                                                                 0.1s
 => => exporting layers                                                                                                                                                0.1s
 => => writing image sha256:b59c6def61aad390709727f28b89b27f49339193b715f39f7e1be2416f21b66f                                                                           0.0s
 => => naming to docker.io/masyanja/hosting:lastest                                                                                                                    0.0s
 => => naming to docker.io/masyanja/hosting:v0.1.0     

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker push masyanja/hosting:latest
The push refers to repository [docker.io/masyanja/hosting]
tag does not exist: masyanja/hosting:latest
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker push masyanja/hosting
Using default tag: latest
The push refers to repository [docker.io/masyanja/hosting]
tag does not exist: masyanja/hosting:latest
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker login
Authenticating with existing credentials...
Login Succeeded

Logging in with your password grants your terminal complete access to your account. 
For better security, log in with a limited-privilege personal access token. Learn more at https://docs.docker.com/go/access-tokens/
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % 

dckr_pat_SjiJtriy5KuItLLC7pw-FtA8Q_E - token


(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker tag masyanja/hosting:latest           
"docker tag" requires exactly 2 arguments.
See 'docker tag --help'.

Usage:  docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]

Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker tag nginx:latest masyanja/hosting:nginx
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker push masyanja/hosting:latest
The push refers to repository [docker.io/masyanja/hosting]
tag does not exist: masyanja/hosting:latest
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker tag ubuntu:latest masyanja/hosting:ubuntu
Error response from daemon: No such image: ubuntu:latest
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker push masyanja/hosting:latest
The push refers to repository [docker.io/masyanja/hostint]
An image does not exist locally with the tag: masyanja/hosting 
Через docker hub - action
General - tags
Должны появиться tags в repository

The push refers to repository [docker.io/masyanja/hosting]
tag does not exist: masyanja/hosting:latest
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker pull masyanja/hosting:lastest
lastest: Pulling from masyanja/hosting
Digest: sha256:66d98799708bbefc9334c2bb315e05426011e909a2877e6e47f9437adce14d75
Status: Image is up to date for masyanja/hosting:lastest
docker.io/masyanja/hosting:lastest
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % 

(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker push masyanja/hosting:v0.1.0
The push refers to repository [docker.io/masyanja/hosting]
c185f1e8bfff: Preparing 
5f161ce896c0: Preparing 
5f161ce896c0: Pushed 
32a541276935: Pushed 
bdcd94073ef2: Pushed 
c44cf16349ba: Layer already exists 
22323d4bd802: Pushed 
e6e9854ca999: Pushed 
397a239a053b: Pushed 
89c3244a87b2: Pushed 
80231db1194c: Pushed 
f1c1f2298584: Pushed 
ccba29d69370: Pushed 
v0.1.0: digest: sha256:66d98799708bbefc9334c2bb315e05426011e909a2877e6e47f9437adce14d75 size: 3053
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % 

The push refers to repository [docker.io/masyanja/hosting]
tag does not exist: masyanja/hosting:latest
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker pull masyanja/hosting:lastest
lastest: Pulling from masyanja/hosting
Digest: sha256:66d98799708bbefc9334c2bb315e05426011e909a2877e6e47f9437adce14d75
Status: Image is up to date for masyanja/hosting:lastest
docker.io/masyanja/hosting:lastest
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker pull masyanja/hosting:lastest
lastest: Pulling from masyanja/hosting
Digest: sha256:66d98799708bbefc9334c2bb315e05426011e909a2877e6e47f9437adce14d75
Status: Image is up to date for masyanja/hosting:lastest
docker.io/masyanja/hosting:lastest
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker push masyanja/hosting:latest
The push refers to repository [docker.io/masyanja/hosting]
tag does not exist: masyanja/hosting:latest
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % docker push masyanja/hosting:lastest
The push refers to repository [docker.io/masyanja/hosting]
c185f1e8bfff: Preparing 
5f161ce896c0: Preparing 
5f161ce896c0: Layer already exists 
32a541276935: Layer already exists 
bdcd94073ef2: Layer already exists 
c44cf16349ba: Layer already exists 
22323d4bd802: Layer already exists 
e6e9854ca999: Layer already exists 
397a239a053b: Layer already exists 
89c3244a87b2: Layer already exists 
80231db1194c: Layer already exists 
f1c1f2298584: Layer already exists 
ccba29d69370: Layer already exists 
lastest: digest: sha256:66d98799708bbefc9334c2bb315e05426011e909a2877e6e47f9437adce14d75 size: 3053
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker %

(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % git add .
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % git commit -m "26Docker"
[main cdb011f] 26Docker
 14 files changed, 1224 insertions(+)
 create mode 100644 .DS_Store
 create mode 100644 Commands/terminal.md
 create mode 100644 Commands/terminal2.md
 create mode 100644 Commands/terminal_main.md
 create mode 100644 Commands/termonal3.md
 create mode 100644 __pycache__/app.cpython-310.pyc
 create mode 100644 __pycache__/app.cpython-38.pyc
 create mode 100644 __pycache__/builder.cpython-310.pyc
 create mode 100644 __pycache__/db.cpython-310.pyc
 create mode 100644 __pycache__/functions.cpython-310.pyc
 create mode 100644 __pycache__/models.cpython-310.pyc
 create mode 100644 __pycache__/views.cpython-310.pyc
 create mode 100644 flask-app.service
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % 
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 - git tokengi

(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % git add .
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % git commit -m "26Docker"
[main cdb011f] 26Docker
 14 files changed, 1224 insertions(+)
 create mode 100644 .DS_Store
 create mode 100644 Commands/terminal.md
 create mode 100644 Commands/terminal2.md
 create mode 100644 Commands/terminal_main.md
 create mode 100644 Commands/termonal3.md
 create mode 100644 __pycache__/app.cpython-310.pyc
 create mode 100644 __pycache__/app.cpython-38.pyc
 create mode 100644 __pycache__/builder.cpython-310.pyc
 create mode 100644 __pycache__/db.cpython-310.pyc
 create mode 100644 __pycache__/functions.cpython-310.pyc
 create mode 100644 __pycache__/models.cpython-310.pyc
 create mode 100644 __pycache__/views.cpython-310.pyc
 create mode 100644 flask-app.service
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % git push
Username for 'https://github.com': Masyanja
Password for 'https://Masyanja@github.com': 
remote: Support for password authentication was removed on August 13, 2021.
remote: Please see https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-with-https-urls for information on currently recommended modes of authentication.
fatal: Authentication failed for 'https://github.com/Masyanja/26Docker.git/'
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % git add .
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % git commit -m "26Docker"
[main 16d8098] 26Docker
 1 file changed, 20 insertions(+)
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % git push
Username for 'https://github.com': Masyanja
Password for 'https://Masyanja@github.com': 
To https://github.com/Masyanja/26Docker.git
 ! [rejected]        main -> main (fetch first)
error: failed to push some refs to 'https://github.com/Masyanja/26Docker.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
(venv) (base) kolyada@MacBook-Air-MARIA 26Docker % 





