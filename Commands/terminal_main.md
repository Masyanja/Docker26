Last login: Wed Nov 30 18:04:05 on ttys004
(base) kolyada@MacBook-Air-MARIA ~ % ssh mkoliada@51.250.75.132
Welcome to Ubuntu 22.04.1 LTS (GNU/Linux 5.15.0-52-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Wed Nov 30 09:34:29 PM UTC 2022

  System load:  0.0               Processes:             147
  Usage of /:   49.4% of 9.76GB   Users logged in:       1
  Memory usage: 36%               IPv4 address for eth0: 10.128.0.34
  Swap usage:   0%

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

10 updates can be applied immediately.
1 of these updates is a standard security update.
To see these additional updates run: apt list --upgradable


*** System restart required ***
Last login: Wed Nov 30 13:57:22 2022 from 196.196.53.51
mkoliada@assign:~$ ls
app
mkoliada@assign:~$ cd app
mkoliada@assign:~/app$ ls
api      app.py  flask-app.service  requirements.txt  templates  utils.py
api.log  data    __pycache__        static            test       venv
mkoliada@assign:~/app$ cd
mkoliada@assign:~$ rm -r app
rm: remove write-protected regular file 'app/.git/objects/pack/pack-464ce99d0f658e07ec007955d4d1acff5e1c555e.idx'? y
rm: remove write-protected regular file 'app/.git/objects/pack/pack-464ce99d0f658e07ec007955d4d1acff5e1c555e.pack'? y
rm: remove write-protected regular file 'app/__pycache__/app.cpython-310.pyc'? y
ymkoliada@assign:~$ y
y: command not found
mkoliada@assign:~$ ls
mkoliada@assign:~$ git clone https://github.com/Masyanja/26Docker.git app 
Cloning into 'app'...
remote: Enumerating objects: 36, done.
remote: Counting objects: 100% (36/36), done.
remote: Compressing objects: 100% (33/33), done.
remote: Total 36 (delta 4), reused 20 (delta 0), pack-reused 0
Receiving objects: 100% (36/36), 240.82 KiB | 189.00 KiB/s, done.
Resolving deltas: 100% (4/4), done.
mkoliada@assign:~$ ls
app
mkoliada@assign:~$ cd app
mkoliada@assign:~/app$ ls
app.py      db.py                entrypoint.sh      models.py         run.py
builder.py  docker-compose.yaml  flask-app.service  README.md         views.py
data        Dockerfile           functions.py       requirements.txt
mkoliada@assign:~/app$ sudo apt install git
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
git is already the newest version (1:2.34.1-1ubuntu1.5).
The following packages were automatically installed and are no longer required:
  libflashrom1 libftdi1-2
Use 'sudo apt autoremove' to remove them.
0 upgraded, 0 newly installed, 0 to remove and 10 not upgraded.
mkoliada@assign:~/app$ git -v
unknown option: -v
usage: git [--version] [--help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           [--super-prefix=<path>] [--config-env=<name>=<envvar>]
           <command> [<args>]
mkoliada@assign:~/app$ git --version
git version 2.34.1
mkoliada@assign:~/app$ python3 -V
Python 3.10.6
mkoliada@assign:~/app$ sudo apt install python3-pip
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
python3-pip is already the newest version (22.0.2+dfsg-1).
The following packages were automatically installed and are no longer required:
  libflashrom1 libftdi1-2
Use 'sudo apt autoremove' to remove them.
0 upgraded, 0 newly installed, 0 to remove and 10 not upgraded.
mkoliada@assign:~/app$ python3 -m pip install virtualenv
Defaulting to user installation because normal site-packages is not writeable
Requirement already satisfied: virtualenv in /home/mkoliada/.local/lib/python3.10/site-packages (20.16.7)
Requirement already satisfied: platformdirs<3,>=2.4 in /home/mkoliada/.local/lib/python3.10/site-packages (from virtualenv) (2.5.4)
Requirement already satisfied: filelock<4,>=3.4.1 in /home/mkoliada/.local/lib/python3.10/site-packages (from virtualenv) (3.8.0)
Requirement already satisfied: distlib<1,>=0.3.6 in /home/mkoliada/.local/lib/python3.10/site-packages (from virtualenv) (0.3.6)
mkoliada@assign:~/app$ python3 -m virtualenv venv
created virtual environment CPython3.10.6.final.0-64 in 3484ms
  creator CPython3Posix(dest=/home/mkoliada/app/venv, clear=False, no_vcs_ignore=False, global=False)
  seeder FromAppData(download=False, pip=bundle, setuptools=bundle, wheel=bundle, via=copy, app_data_dir=/home/mkoliada/.local/share/virtualenv)
    added seed packages: pip==22.3.1, setuptools==65.5.1, wheel==0.38.4
  activators BashActivator,CShellActivator,FishActivator,NushellActivator,PowerShellActivator,PythonActivator
mkoliada@assign:~/app$ . venv/bin/activate
(venv) mkoliada@assign:~/app$ cd
(venv) mkoliada@assign:~$ exit
logout
Connection to 51.250.75.132 closed.
(base) kolyada@MacBook-Air-MARIA ~ % ssh mkoliada@51.250.75.132
Welcome to Ubuntu 22.04.1 LTS (GNU/Linux 5.15.0-52-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Wed Nov 30 09:42:32 PM UTC 2022

  System load:  0.06884765625     Processes:             148
  Usage of /:   48.8% of 9.76GB   Users logged in:       1
  Memory usage: 32%               IPv4 address for eth0: 10.128.0.34
  Swap usage:   0%

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

10 updates can be applied immediately.
1 of these updates is a standard security update.
To see these additional updates run: apt list --upgradable


*** System restart required ***
Last login: Wed Nov 30 21:34:31 2022 from 196.196.53.134
mkoliada@assign:~$ cd app
mkoliada@assign:~/app$ git pull
Already up to date.
mkoliada@assign:~/app$ docker-compose --version
Command 'docker-compose' not found, but can be installed with:
snap install docker          # version 20.10.17, or
apt  install docker-compose  # version 1.29.2-1
See 'snap info docker' for additional versions.
mkoliada@assign:~/app$ sudo apt install docker-compose
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages were automatically installed and are no longer required:
  libflashrom1 libftdi1-2
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
  bridge-utils containerd dns-root-data dnsmasq-base docker.io pigz
  python3-docker python3-dockerpty python3-docopt python3-dotenv
  python3-texttable python3-websocket runc ubuntu-fan
Suggested packages:
  ifupdown aufs-tools cgroupfs-mount | cgroup-lite debootstrap docker-doc
  rinse zfs-fuse | zfsutils
The following NEW packages will be installed:
  bridge-utils containerd dns-root-data dnsmasq-base docker-compose docker.io
  pigz python3-docker python3-dockerpty python3-docopt python3-dotenv
  python3-texttable python3-websocket runc ubuntu-fan
0 upgraded, 15 newly installed, 0 to remove and 10 not upgraded.
Need to get 66.1 MB of archives.
After this operation, 285 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://ru.archive.ubuntu.com/ubuntu jammy/universe amd64 pigz amd64 2.6-1 [63.6 kB]
Get:2 http://ru.archive.ubuntu.com/ubuntu jammy/main amd64 bridge-utils amd64 1.7-1ubuntu3 [34.4 kB]
Get:3 http://ru.archive.ubuntu.com/ubuntu jammy-updates/main amd64 runc amd64 1.1.0-0ubuntu1.1 [4,242 kB]
Get:4 http://ru.archive.ubuntu.com/ubuntu jammy/main amd64 containerd amd64 1.5.9-0ubuntu3 [27.0 MB]
Get:5 http://ru.archive.ubuntu.com/ubuntu jammy/main amd64 dns-root-data all 2021011101 [5,256 B]
Get:6 http://ru.archive.ubuntu.com/ubuntu jammy-updates/main amd64 dnsmasq-base amd64 2.86-1.1ubuntu0.1 [354 kB]
Get:7 http://ru.archive.ubuntu.com/ubuntu jammy/universe amd64 python3-websocket all 1.2.3-1 [34.7 kB]
Get:8 http://ru.archive.ubuntu.com/ubuntu jammy/universe amd64 python3-docker all 5.0.3-1 [89.3 kB]
Get:9 http://ru.archive.ubuntu.com/ubuntu jammy/universe amd64 python3-dockerpty all 0.4.1-2 [11.1 kB]
Get:10 http://ru.archive.ubuntu.com/ubuntu jammy/universe amd64 python3-docopt all 0.6.2-4 [26.9 kB]
Get:11 http://ru.archive.ubuntu.com/ubuntu jammy/universe amd64 python3-dotenv all 0.19.2-1 [20.5 kB]
Get:12 http://ru.archive.ubuntu.com/ubuntu jammy/universe amd64 python3-texttable all 1.6.4-1 [11.4 kB]
Get:13 http://ru.archive.ubuntu.com/ubuntu jammy/universe amd64 docker-compose all 1.29.2-1 [95.8 kB]
Get:14 http://ru.archive.ubuntu.com/ubuntu jammy/universe amd64 docker.io amd64 20.10.12-0ubuntu4 [34.0 MB]
Get:15 http://ru.archive.ubuntu.com/ubuntu jammy/universe amd64 ubuntu-fan all 0.12.16 [35.2 kB]
Fetched 66.1 MB in 2s (28.7 MB/s)       
Preconfiguring packages ...
Selecting previously unselected package pigz.
(Reading database ... 118018 files and directories currently installed.)
Preparing to unpack .../00-pigz_2.6-1_amd64.deb ...
Unpacking pigz (2.6-1) ...
Selecting previously unselected package bridge-utils.
Preparing to unpack .../01-bridge-utils_1.7-1ubuntu3_amd64.deb ...
Unpacking bridge-utils (1.7-1ubuntu3) ...
Selecting previously unselected package runc.
Preparing to unpack .../02-runc_1.1.0-0ubuntu1.1_amd64.deb ...
Unpacking runc (1.1.0-0ubuntu1.1) ...
Selecting previously unselected package containerd.
Preparing to unpack .../03-containerd_1.5.9-0ubuntu3_amd64.deb ...
Unpacking containerd (1.5.9-0ubuntu3) ...
Selecting previously unselected package dns-root-data.
Preparing to unpack .../04-dns-root-data_2021011101_all.deb ...
Unpacking dns-root-data (2021011101) ...
Selecting previously unselected package dnsmasq-base.
Preparing to unpack .../05-dnsmasq-base_2.86-1.1ubuntu0.1_amd64.deb ...
Unpacking dnsmasq-base (2.86-1.1ubuntu0.1) ...
Selecting previously unselected package python3-websocket.
Preparing to unpack .../06-python3-websocket_1.2.3-1_all.deb ...
Unpacking python3-websocket (1.2.3-1) ...
Selecting previously unselected package python3-docker.
Preparing to unpack .../07-python3-docker_5.0.3-1_all.deb ...
Unpacking python3-docker (5.0.3-1) ...
Selecting previously unselected package python3-dockerpty.
Preparing to unpack .../08-python3-dockerpty_0.4.1-2_all.deb ...
Unpacking python3-dockerpty (0.4.1-2) ...
Selecting previously unselected package python3-docopt.
Preparing to unpack .../09-python3-docopt_0.6.2-4_all.deb ...
Unpacking python3-docopt (0.6.2-4) ...
Selecting previously unselected package python3-dotenv.
Preparing to unpack .../10-python3-dotenv_0.19.2-1_all.deb ...
Unpacking python3-dotenv (0.19.2-1) ...
Selecting previously unselected package python3-texttable.
Preparing to unpack .../11-python3-texttable_1.6.4-1_all.deb ...
Unpacking python3-texttable (1.6.4-1) ...
Selecting previously unselected package docker-compose.
Preparing to unpack .../12-docker-compose_1.29.2-1_all.deb ...
Unpacking docker-compose (1.29.2-1) ...
Selecting previously unselected package docker.io.
Preparing to unpack .../13-docker.io_20.10.12-0ubuntu4_amd64.deb ...
Unpacking docker.io (20.10.12-0ubuntu4) ...
Selecting previously unselected package ubuntu-fan.
Preparing to unpack .../14-ubuntu-fan_0.12.16_all.deb ...
Unpacking ubuntu-fan (0.12.16) ...
Setting up python3-dotenv (0.19.2-1) ...
Setting up python3-texttable (1.6.4-1) ...
Setting up python3-docopt (0.6.2-4) ...
Setting up dnsmasq-base (2.86-1.1ubuntu0.1) ...
Setting up runc (1.1.0-0ubuntu1.1) ...
Setting up dns-root-data (2021011101) ...
Setting up bridge-utils (1.7-1ubuntu3) ...
Setting up pigz (2.6-1) ...
Setting up containerd (1.5.9-0ubuntu3) ...
Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.
Setting up python3-websocket (1.2.3-1) ...
Setting up python3-dockerpty (0.4.1-2) ...
Setting up ubuntu-fan (0.12.16) ...
Created symlink /etc/systemd/system/multi-user.target.wants/ubuntu-fan.service → /lib/systemd/system/ubuntu-fan.service.
Setting up python3-docker (5.0.3-1) ...
Setting up docker.io (20.10.12-0ubuntu4) ...
Adding group `docker' (GID 121) ...
Done.
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
Setting up docker-compose (1.29.2-1) ...
Processing triggers for dbus (1.12.20-2ubuntu4.1) ...
Processing triggers for man-db (2.10.2-1) ...
Scanning processes...                                                           
Scanning candidates...                                                          
Scanning linux images...                                                        

Restarting services...
 systemctl restart polkit.service
Service restarts being deferred:
 /etc/needrestart/restart.d/dbus.service
 systemctl restart networkd-dispatcher.service
 systemctl restart unattended-upgrades.service

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
mkoliada@assign:~/app$ docker-compose --version
docker-compose version 1.29.2, build unknown
mkoliada@assign:~/app$ docker --version
Docker version 20.10.12, build 20.10.12-0ubuntu4
mkoliada@assign:~/app$

mkoliada@assign:~$ cd app
mkoliada@assign:~/app$ git pull
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 2), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), 699 bytes | 49.00 KiB/s, done.
From https://github.com/Masyanja/26Docker
   e166a0e..c24d526  main       -> origin/main
Updating e166a0e..c24d526
Fast-forward
 docker-compose.yaml | 1 +
 1 file changed, 1 insertion(+)
mkoliada@assign:~/app$ 


Last login: Thu Dec  1 02:16:56 on ttys006
(base) kolyada@MacBook-Air-MARIA ~ % ssh mkoliada@51.250.75.132
Welcome to Ubuntu 22.04.1 LTS (GNU/Linux 5.15.0-52-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Wed Nov 30 11:19:38 PM UTC 2022

  System load:  0.0               Processes:                155
  Usage of /:   51.5% of 9.76GB   Users logged in:          1
  Memory usage: 40%               IPv4 address for docker0: 172.17.0.1
  Swap usage:   0%                IPv4 address for eth0:    10.128.0.34

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

10 updates can be applied immediately.
1 of these updates is a standard security update.
To see these additional updates run: apt list --upgradable


*** System restart required ***
Last login: Wed Nov 30 23:17:29 2022 from 196.196.53.59
mkoliada@assign:~$ ls
app
mkoliada@assign:~$ cd app
mkoliada@assign:~/app$ docker-compose up
Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 699, in urlopen
    httplib_response = self._make_request(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 394, in _make_request
    conn.request(method, url, **httplib_request_kw)
  File "/usr/lib/python3.10/http/client.py", line 1282, in request
    self._send_request(method, url, body, headers, encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1328, in _send_request
    self.endheaders(body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1277, in endheaders
    self._send_output(message_body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1037, in _send_output
    self.send(msg)
  File "/usr/lib/python3.10/http/client.py", line 975, in send
    self.connect()
  File "/usr/lib/python3/dist-packages/docker/transport/unixconn.py", line 30, in connect
    sock.connect(self.unix_socket)
PermissionError: [Errno 13] Permission denied

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/requests/adapters.py", line 439, in send
    resp = conn.urlopen(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 755, in urlopen
    retries = retries.increment(
  File "/usr/lib/python3/dist-packages/urllib3/util/retry.py", line 532, in increment
    raise six.reraise(type(error), error, _stacktrace)
  File "/usr/lib/python3/dist-packages/six.py", line 718, in reraise
    raise value.with_traceback(tb)
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 699, in urlopen
    httplib_response = self._make_request(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 394, in _make_request
    conn.request(method, url, **httplib_request_kw)
  File "/usr/lib/python3.10/http/client.py", line 1282, in request
    self._send_request(method, url, body, headers, encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1328, in _send_request
    self.endheaders(body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1277, in endheaders
    self._send_output(message_body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1037, in _send_output
    self.send(msg)
  File "/usr/lib/python3.10/http/client.py", line 975, in send
    self.connect()
  File "/usr/lib/python3/dist-packages/docker/transport/unixconn.py", line 30, in connect
    sock.connect(self.unix_socket)
urllib3.exceptions.ProtocolError: ('Connection aborted.', PermissionError(13, 'Permission denied'))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 214, in _retrieve_server_version
    return self.version(api_version=False)["ApiVersion"]
  File "/usr/lib/python3/dist-packages/docker/api/daemon.py", line 181, in version
    return self._result(self._get(url), json=True)
  File "/usr/lib/python3/dist-packages/docker/utils/decorators.py", line 46, in inner
    return f(self, *args, **kwargs)
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 237, in _get
    return self.get(url, **self._set_request_timeout(kwargs))
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 555, in get
    return self.request('GET', url, **kwargs)
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 542, in request
    resp = self.send(prep, **send_kwargs)
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 655, in send
    r = adapter.send(request, **kwargs)
  File "/usr/lib/python3/dist-packages/requests/adapters.py", line 498, in send
    raise ConnectionError(err, request=request)
requests.exceptions.ConnectionError: ('Connection aborted.', PermissionError(13, 'Permission denied'))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/bin/docker-compose", line 33, in <module>
    sys.exit(load_entry_point('docker-compose==1.29.2', 'console_scripts', 'docker-compose')())
  File "/usr/lib/python3/dist-packages/compose/cli/main.py", line 81, in main
    command_func()
  File "/usr/lib/python3/dist-packages/compose/cli/main.py", line 200, in perform_command
    project = project_from_options('.', options)
  File "/usr/lib/python3/dist-packages/compose/cli/command.py", line 60, in project_from_options
    return get_project(
  File "/usr/lib/python3/dist-packages/compose/cli/command.py", line 152, in get_project
    client = get_client(
  File "/usr/lib/python3/dist-packages/compose/cli/docker_client.py", line 41, in get_client
    client = docker_client(
  File "/usr/lib/python3/dist-packages/compose/cli/docker_client.py", line 170, in docker_client
    client = APIClient(use_ssh_client=not use_paramiko_ssh, **kwargs)
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 197, in __init__
    self._version = self._retrieve_server_version()
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 221, in _retrieve_server_version
    raise DockerException(
docker.errors.DockerException: Error while fetching server API version: ('Connection aborted.', PermissionError(13, 'Permission denied'))
mkoliada@assign:~/app$ cd
mkoliada@assign:~$ docker-compose up
ERROR: 
        Can't find a suitable configuration file in this directory or any
        parent. Are you in the right directory?

        Supported filenames: docker-compose.yml, docker-compose.yaml, compose.yml, compose.yaml
        
mkoliada@assign:~$ ls
app
mkoliada@assign:~$ cd app
mkoliada@assign:~/app$ docker-compose up
Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 699, in urlopen
    httplib_response = self._make_request(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 394, in _make_request
    conn.request(method, url, **httplib_request_kw)
  File "/usr/lib/python3.10/http/client.py", line 1282, in request
    self._send_request(method, url, body, headers, encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1328, in _send_request
    self.endheaders(body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1277, in endheaders
    self._send_output(message_body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1037, in _send_output
    self.send(msg)
  File "/usr/lib/python3.10/http/client.py", line 975, in send
    self.connect()
  File "/usr/lib/python3/dist-packages/docker/transport/unixconn.py", line 30, in connect
    sock.connect(self.unix_socket)
PermissionError: [Errno 13] Permission denied

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/requests/adapters.py", line 439, in send
    resp = conn.urlopen(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 755, in urlopen
    retries = retries.increment(
  File "/usr/lib/python3/dist-packages/urllib3/util/retry.py", line 532, in increment
    raise six.reraise(type(error), error, _stacktrace)
  File "/usr/lib/python3/dist-packages/six.py", line 718, in reraise
    raise value.with_traceback(tb)
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 699, in urlopen
    httplib_response = self._make_request(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 394, in _make_request
    conn.request(method, url, **httplib_request_kw)
  File "/usr/lib/python3.10/http/client.py", line 1282, in request
    self._send_request(method, url, body, headers, encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1328, in _send_request
    self.endheaders(body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1277, in endheaders
    self._send_output(message_body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1037, in _send_output
    self.send(msg)
  File "/usr/lib/python3.10/http/client.py", line 975, in send
    self.connect()
  File "/usr/lib/python3/dist-packages/docker/transport/unixconn.py", line 30, in connect
    sock.connect(self.unix_socket)
urllib3.exceptions.ProtocolError: ('Connection aborted.', PermissionError(13, 'Permission denied'))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 214, in _retrieve_server_version
    return self.version(api_version=False)["ApiVersion"]
  File "/usr/lib/python3/dist-packages/docker/api/daemon.py", line 181, in version
    return self._result(self._get(url), json=True)
  File "/usr/lib/python3/dist-packages/docker/utils/decorators.py", line 46, in inner
    return f(self, *args, **kwargs)
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 237, in _get
    return self.get(url, **self._set_request_timeout(kwargs))
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 555, in get
    return self.request('GET', url, **kwargs)
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 542, in request
    resp = self.send(prep, **send_kwargs)
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 655, in send
    r = adapter.send(request, **kwargs)
  File "/usr/lib/python3/dist-packages/requests/adapters.py", line 498, in send
    raise ConnectionError(err, request=request)
requests.exceptions.ConnectionError: ('Connection aborted.', PermissionError(13, 'Permission denied'))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/bin/docker-compose", line 33, in <module>
    sys.exit(load_entry_point('docker-compose==1.29.2', 'console_scripts', 'docker-compose')())
  File "/usr/lib/python3/dist-packages/compose/cli/main.py", line 81, in main
    command_func()
  File "/usr/lib/python3/dist-packages/compose/cli/main.py", line 200, in perform_command
    project = project_from_options('.', options)
  File "/usr/lib/python3/dist-packages/compose/cli/command.py", line 60, in project_from_options
    return get_project(
  File "/usr/lib/python3/dist-packages/compose/cli/command.py", line 152, in get_project
    client = get_client(
  File "/usr/lib/python3/dist-packages/compose/cli/docker_client.py", line 41, in get_client
    client = docker_client(
  File "/usr/lib/python3/dist-packages/compose/cli/docker_client.py", line 170, in docker_client
    client = APIClient(use_ssh_client=not use_paramiko_ssh, **kwargs)
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 197, in __init__
    self._version = self._retrieve_server_version()
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 221, in _retrieve_server_version
    raise DockerException(
docker.errors.DockerException: Error while fetching server API version: ('Connection aborted.', PermissionError(13, 'Permission denied'))
mkoliada@assign:~/app$ systemctl status docker.service
● docker.service - Docker Application Container Engine
     Loaded: loaded (/lib/systemd/system/docker.service; enabled; vendor preset: enabled)
     Active: active (running) since Wed 2022-11-30 21:44:39 UTC; 1h 47min ago
TriggeredBy: ● docker.socket
       Docs: https://docs.docker.com
   Main PID: 158052 (dockerd)
      Tasks: 8
     Memory: 33.8M
        CPU: 2.050s
     CGroup: /system.slice/docker.service
             └─158052 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock
mkoliada@assign:~/app$ sudo gpasswd -a $User docker
gpasswd: user 'docker' does not exist
mkoliada@assign:~/app$ sudo su $USER
mkoliada@assign:~/app$ docker compose-up
docker: 'compose-up' is not a docker command.
See 'docker --help'
mkoliada@assign:~/app$ docker-compose up
Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 699, in urlopen
    httplib_response = self._make_request(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 394, in _make_request
    conn.request(method, url, **httplib_request_kw)
  File "/usr/lib/python3.10/http/client.py", line 1282, in request
    self._send_request(method, url, body, headers, encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1328, in _send_request
    self.endheaders(body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1277, in endheaders
    self._send_output(message_body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1037, in _send_output
    self.send(msg)
  File "/usr/lib/python3.10/http/client.py", line 975, in send
    self.connect()
  File "/usr/lib/python3/dist-packages/docker/transport/unixconn.py", line 30, in connect
    sock.connect(self.unix_socket)
PermissionError: [Errno 13] Permission denied

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/requests/adapters.py", line 439, in send
    resp = conn.urlopen(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 755, in urlopen
    retries = retries.increment(
  File "/usr/lib/python3/dist-packages/urllib3/util/retry.py", line 532, in increment
    raise six.reraise(type(error), error, _stacktrace)
  File "/usr/lib/python3/dist-packages/six.py", line 718, in reraise
    raise value.with_traceback(tb)
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 699, in urlopen
    httplib_response = self._make_request(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 394, in _make_request
    conn.request(method, url, **httplib_request_kw)
  File "/usr/lib/python3.10/http/client.py", line 1282, in request
    self._send_request(method, url, body, headers, encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1328, in _send_request
    self.endheaders(body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1277, in endheaders
    self._send_output(message_body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1037, in _send_output
    self.send(msg)
  File "/usr/lib/python3.10/http/client.py", line 975, in send
    self.connect()
  File "/usr/lib/python3/dist-packages/docker/transport/unixconn.py", line 30, in connect
    sock.connect(self.unix_socket)
urllib3.exceptions.ProtocolError: ('Connection aborted.', PermissionError(13, 'Permission denied'))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 214, in _retrieve_server_version
    return self.version(api_version=False)["ApiVersion"]
  File "/usr/lib/python3/dist-packages/docker/api/daemon.py", line 181, in version
    return self._result(self._get(url), json=True)
  File "/usr/lib/python3/dist-packages/docker/utils/decorators.py", line 46, in inner
    return f(self, *args, **kwargs)
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 237, in _get
    return self.get(url, **self._set_request_timeout(kwargs))
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 555, in get
    return self.request('GET', url, **kwargs)
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 542, in request
    resp = self.send(prep, **send_kwargs)
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 655, in send
    r = adapter.send(request, **kwargs)
  File "/usr/lib/python3/dist-packages/requests/adapters.py", line 498, in send
    raise ConnectionError(err, request=request)
requests.exceptions.ConnectionError: ('Connection aborted.', PermissionError(13, 'Permission denied'))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/bin/docker-compose", line 33, in <module>
    sys.exit(load_entry_point('docker-compose==1.29.2', 'console_scripts', 'docker-compose')())
  File "/usr/lib/python3/dist-packages/compose/cli/main.py", line 81, in main
    command_func()
  File "/usr/lib/python3/dist-packages/compose/cli/main.py", line 200, in perform_command
    project = project_from_options('.', options)
  File "/usr/lib/python3/dist-packages/compose/cli/command.py", line 60, in project_from_options
    return get_project(
  File "/usr/lib/python3/dist-packages/compose/cli/command.py", line 152, in get_project
    client = get_client(
  File "/usr/lib/python3/dist-packages/compose/cli/docker_client.py", line 41, in get_client
    client = docker_client(
  File "/usr/lib/python3/dist-packages/compose/cli/docker_client.py", line 170, in docker_client
    client = APIClient(use_ssh_client=not use_paramiko_ssh, **kwargs)
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 197, in __init__
    self._version = self._retrieve_server_version()
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 221, in _retrieve_server_version
    raise DockerException(
docker.errors.DockerException: Error while fetching server API version: ('Connection aborted.', PermissionError(13, 'Permission denied'))
mkoliada@assign:~/app$ systemctl start docker
==== AUTHENTICATING FOR org.freedesktop.systemd1.manage-units ===
Authentication is required to start 'docker.service'.
Authenticating as: ,,, (skypro)
Password: 
==== AUTHENTICATION COMPLETE ===
mkoliada@assign:~/app$ systemctl enable docker
==== AUTHENTICATING FOR org.freedesktop.systemd1.manage-unit-files ===
Authentication is required to manage system service or unit files.
Authenticating as: ,,, (skypro)
Password: 
==== AUTHENTICATION COMPLETE ===
==== AUTHENTICATING FOR org.freedesktop.systemd1.reload-daemon ===
Authentication is required to reload the systemd state.
Authenticating as: ,,, (skypro)
Password: 
==== AUTHENTICATION COMPLETE ===
mkoliada@assign:~/app$ docker-compose up
Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 699, in urlopen
    httplib_response = self._make_request(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 394, in _make_request
    conn.request(method, url, **httplib_request_kw)
  File "/usr/lib/python3.10/http/client.py", line 1282, in request
    self._send_request(method, url, body, headers, encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1328, in _send_request
    self.endheaders(body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1277, in endheaders
    self._send_output(message_body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1037, in _send_output
    self.send(msg)
  File "/usr/lib/python3.10/http/client.py", line 975, in send
    self.connect()
  File "/usr/lib/python3/dist-packages/docker/transport/unixconn.py", line 30, in connect
    sock.connect(self.unix_socket)
PermissionError: [Errno 13] Permission denied

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/requests/adapters.py", line 439, in send
    resp = conn.urlopen(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 755, in urlopen
    retries = retries.increment(
  File "/usr/lib/python3/dist-packages/urllib3/util/retry.py", line 532, in increment
    raise six.reraise(type(error), error, _stacktrace)
  File "/usr/lib/python3/dist-packages/six.py", line 718, in reraise
    raise value.with_traceback(tb)
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 699, in urlopen
    httplib_response = self._make_request(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 394, in _make_request
    conn.request(method, url, **httplib_request_kw)
  File "/usr/lib/python3.10/http/client.py", line 1282, in request
    self._send_request(method, url, body, headers, encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1328, in _send_request
    self.endheaders(body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1277, in endheaders
    self._send_output(message_body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1037, in _send_output
    self.send(msg)
  File "/usr/lib/python3.10/http/client.py", line 975, in send
    self.connect()
  File "/usr/lib/python3/dist-packages/docker/transport/unixconn.py", line 30, in connect
    sock.connect(self.unix_socket)
urllib3.exceptions.ProtocolError: ('Connection aborted.', PermissionError(13, 'Permission denied'))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 214, in _retrieve_server_version
    return self.version(api_version=False)["ApiVersion"]
  File "/usr/lib/python3/dist-packages/docker/api/daemon.py", line 181, in version
    return self._result(self._get(url), json=True)
  File "/usr/lib/python3/dist-packages/docker/utils/decorators.py", line 46, in inner
    return f(self, *args, **kwargs)
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 237, in _get
    return self.get(url, **self._set_request_timeout(kwargs))
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 555, in get
    return self.request('GET', url, **kwargs)
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 542, in request
    resp = self.send(prep, **send_kwargs)
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 655, in send
    r = adapter.send(request, **kwargs)
  File "/usr/lib/python3/dist-packages/requests/adapters.py", line 498, in send
    raise ConnectionError(err, request=request)
requests.exceptions.ConnectionError: ('Connection aborted.', PermissionError(13, 'Permission denied'))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/bin/docker-compose", line 33, in <module>
    sys.exit(load_entry_point('docker-compose==1.29.2', 'console_scripts', 'docker-compose')())
  File "/usr/lib/python3/dist-packages/compose/cli/main.py", line 81, in main
    command_func()
  File "/usr/lib/python3/dist-packages/compose/cli/main.py", line 200, in perform_command
    project = project_from_options('.', options)
  File "/usr/lib/python3/dist-packages/compose/cli/command.py", line 60, in project_from_options
    return get_project(
  File "/usr/lib/python3/dist-packages/compose/cli/command.py", line 152, in get_project
    client = get_client(
  File "/usr/lib/python3/dist-packages/compose/cli/docker_client.py", line 41, in get_client
    client = docker_client(
  File "/usr/lib/python3/dist-packages/compose/cli/docker_client.py", line 170, in docker_client
    client = APIClient(use_ssh_client=not use_paramiko_ssh, **kwargs)
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 197, in __init__
    self._version = self._retrieve_server_version()
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 221, in _retrieve_server_version
    raise DockerException(
docker.errors.DockerException: Error while fetching server API version: ('Connection aborted.', PermissionError(13, 'Permission denied'))
mkoliada@assign:~/app$ systemctl is-enable docker
Unknown command verb is-enable.
mkoliada@assign:~/app$ systemctl is-enabled docker
enabled
mkoliada@assign:~/app$ docker-compose up source ~/.bashrc.
Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 699, in urlopen
    httplib_response = self._make_request(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 394, in _make_request
    conn.request(method, url, **httplib_request_kw)
  File "/usr/lib/python3.10/http/client.py", line 1282, in request
    self._send_request(method, url, body, headers, encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1328, in _send_request
    self.endheaders(body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1277, in endheaders
    self._send_output(message_body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1037, in _send_output
    self.send(msg)
  File "/usr/lib/python3.10/http/client.py", line 975, in send
    self.connect()
  File "/usr/lib/python3/dist-packages/docker/transport/unixconn.py", line 30, in connect
    sock.connect(self.unix_socket)
PermissionError: [Errno 13] Permission denied

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/requests/adapters.py", line 439, in send
    resp = conn.urlopen(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 755, in urlopen
    retries = retries.increment(
  File "/usr/lib/python3/dist-packages/urllib3/util/retry.py", line 532, in increment
    raise six.reraise(type(error), error, _stacktrace)
  File "/usr/lib/python3/dist-packages/six.py", line 718, in reraise
    raise value.with_traceback(tb)
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 699, in urlopen
    httplib_response = self._make_request(
  File "/usr/lib/python3/dist-packages/urllib3/connectionpool.py", line 394, in _make_request
    conn.request(method, url, **httplib_request_kw)
  File "/usr/lib/python3.10/http/client.py", line 1282, in request
    self._send_request(method, url, body, headers, encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1328, in _send_request
    self.endheaders(body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1277, in endheaders
    self._send_output(message_body, encode_chunked=encode_chunked)
  File "/usr/lib/python3.10/http/client.py", line 1037, in _send_output
    self.send(msg)
  File "/usr/lib/python3.10/http/client.py", line 975, in send
    self.connect()
  File "/usr/lib/python3/dist-packages/docker/transport/unixconn.py", line 30, in connect
    sock.connect(self.unix_socket)
urllib3.exceptions.ProtocolError: ('Connection aborted.', PermissionError(13, 'Permission denied'))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 214, in _retrieve_server_version
    return self.version(api_version=False)["ApiVersion"]
  File "/usr/lib/python3/dist-packages/docker/api/daemon.py", line 181, in version
    return self._result(self._get(url), json=True)
  File "/usr/lib/python3/dist-packages/docker/utils/decorators.py", line 46, in inner
    return f(self, *args, **kwargs)
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 237, in _get
    return self.get(url, **self._set_request_timeout(kwargs))
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 555, in get
    return self.request('GET', url, **kwargs)
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 542, in request
    resp = self.send(prep, **send_kwargs)
  File "/usr/lib/python3/dist-packages/requests/sessions.py", line 655, in send
    r = adapter.send(request, **kwargs)
  File "/usr/lib/python3/dist-packages/requests/adapters.py", line 498, in send
    raise ConnectionError(err, request=request)
requests.exceptions.ConnectionError: ('Connection aborted.', PermissionError(13, 'Permission denied'))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/bin/docker-compose", line 33, in <module>
    sys.exit(load_entry_point('docker-compose==1.29.2', 'console_scripts', 'docker-compose')())
  File "/usr/lib/python3/dist-packages/compose/cli/main.py", line 81, in main
    command_func()
  File "/usr/lib/python3/dist-packages/compose/cli/main.py", line 200, in perform_command
    project = project_from_options('.', options)
  File "/usr/lib/python3/dist-packages/compose/cli/command.py", line 60, in project_from_options
    return get_project(
  File "/usr/lib/python3/dist-packages/compose/cli/command.py", line 152, in get_project
    client = get_client(
  File "/usr/lib/python3/dist-packages/compose/cli/docker_client.py", line 41, in get_client
    client = docker_client(
  File "/usr/lib/python3/dist-packages/compose/cli/docker_client.py", line 170, in docker_client
    client = APIClient(use_ssh_client=not use_paramiko_ssh, **kwargs)
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 197, in __init__
    self._version = self._retrieve_server_version()
  File "/usr/lib/python3/dist-packages/docker/api/client.py", line 221, in _retrieve_server_version
    raise DockerException(
docker.errors.DockerException: Error while fetching server API version: ('Connection aborted.', PermissionError(13, 'Permission denied'))
mkoliada@assign:~/app$ cd
mkoliada@assign:~$ sudo groupadd docker
groupadd: group 'docker' already exists
mkoliada@assign:~$ sudo usermod -aG docker skypro
mkoliada@assign:~$ exit
exit
mkoliada@assign:~/app$ 

Last login: Thu Dec  1 02:19:16 on ttys006
(base) kolyada@MacBook-Air-MARIA ~ % ssh mkoliada@51.250.75.132
Welcome to Ubuntu 22.04.1 LTS (GNU/Linux 5.15.0-52-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Wed Nov 30 11:40:57 PM UTC 2022

  System load:  0.0               Processes:                153
  Usage of /:   51.5% of 9.76GB   Users logged in:          1
  Memory usage: 41%               IPv4 address for docker0: 172.17.0.1
  Swap usage:   0%                IPv4 address for eth0:    10.128.0.34

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

10 updates can be applied immediately.
1 of these updates is a standard security update.
To see these additional updates run: apt list --upgradable


*** System restart required ***
Last login: Wed Nov 30 23:19:39 2022 from 196.196.53.59
mkoliada@assign:~$ docker ps
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json": dial unix /var/run/docker.sock: connect: permission denied
mkoliada@assign:~$ cd
mkoliada@assign:~$ cd app
mkoliada@assign:~/app$ docker ps
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json": dial unix /var/run/docker.sock: connect: permission denied
mkoliada@assign:~/app$ sudo docker-compose up
Creating network "app_default" with the default driver
Building web
Sending build context to Docker daemon  14.32MB
Step 1/7 : FROM python:3.9
3.9: Pulling from library/python
a8ca11554fce: Pull complete 
e4e46864aba2: Pull complete 
c85a0be79bfb: Pull complete 
195ea6a58ca8: Pull complete 
157f16ed0a0c: Pull complete 
884b144bec28: Pull complete 
dc4ed63cc6ae: Pull complete 
aa6a7fdf543b: Pull complete 
42aabb4354c6: Pull complete 
Digest: sha256:c1613835d7be322f98603f356b9e0c9d40f9589e94dc9f710e714a807a665700
Status: Downloaded newer image for python:3.9
 ---> 850f8694d221
Step 2/7 : ENV HOME /app
 ---> Running in ccd9512dc790
Removing intermediate container ccd9512dc790
 ---> b9f9153175d1
Step 3/7 : WORKDIR $HOME
 ---> Running in 25f948b6bc3f
Removing intermediate container 25f948b6bc3f
 ---> 4df74669f70f
Step 4/7 : COPY requirements.txt .
 ---> 71cf96334ad0
Step 5/7 : RUN python3 -m pip install --no-cache -r requirements.txt
 ---> Running in 8088c6d31743
Collecting Flask==2.2.2
  Downloading Flask-2.2.2-py3-none-any.whl (101 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 101.5/101.5 KB 2.3 MB/s eta 0:00:00
Collecting Werkzeug==2.2.2
  Downloading Werkzeug-2.2.2-py3-none-any.whl (232 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 232.7/232.7 KB 8.9 MB/s eta 0:00:00
Collecting gunicorn==20.1.0
  Downloading gunicorn-20.1.0-py3-none-any.whl (79 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 79.5/79.5 KB 93.1 MB/s eta 0:00:00
Collecting marshmallow==3.19.0
  Downloading marshmallow-3.19.0-py3-none-any.whl (49 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 49.1/49.1 KB 91.7 MB/s eta 0:00:00
Collecting flask-sqlalchemy==3.0.2
  Downloading Flask_SQLAlchemy-3.0.2-py3-none-any.whl (24 kB)
Collecting psycopg2-binary==2.9.5
  Downloading psycopg2_binary-2.9.5-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (3.0 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 3.0/3.0 MB 51.1 MB/s eta 0:00:00
Collecting flask_restx==1.0.3
  Downloading flask_restx-1.0.3-py2.py3-none-any.whl (5.3 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 5.3/5.3 MB 123.5 MB/s eta 0:00:00
Collecting importlib-metadata>=3.6.0
  Downloading importlib_metadata-5.1.0-py3-none-any.whl (21 kB)
Collecting itsdangerous>=2.0
  Downloading itsdangerous-2.1.2-py3-none-any.whl (15 kB)
Collecting Jinja2>=3.0
  Downloading Jinja2-3.1.2-py3-none-any.whl (133 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 133.1/133.1 KB 136.7 MB/s eta 0:00:00
Collecting click>=8.0
  Downloading click-8.1.3-py3-none-any.whl (96 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 96.6/96.6 KB 116.5 MB/s eta 0:00:00
Collecting MarkupSafe>=2.1.1
  Downloading MarkupSafe-2.1.1-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (25 kB)
Requirement already satisfied: setuptools>=3.0 in /usr/local/lib/python3.9/site-packages (from gunicorn==20.1.0->-r requirements.txt (line 3)) (58.1.0)
Collecting packaging>=17.0
  Downloading packaging-21.3-py3-none-any.whl (40 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 40.8/40.8 KB 116.7 MB/s eta 0:00:00
Collecting SQLAlchemy>=1.4.18
  Downloading SQLAlchemy-1.4.44-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl (1.6 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.6/1.6 MB 71.5 MB/s eta 0:00:00
Collecting aniso8601>=0.82
  Downloading aniso8601-9.0.1-py2.py3-none-any.whl (52 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 52.8/52.8 KB 104.8 MB/s eta 0:00:00
Collecting jsonschema
  Downloading jsonschema-4.17.3-py3-none-any.whl (90 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 90.4/90.4 KB 167.6 MB/s eta 0:00:00
Collecting pytz
  Downloading pytz-2022.6-py2.py3-none-any.whl (498 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 498.1/498.1 KB 159.3 MB/s eta 0:00:00
Collecting zipp>=0.5
  Downloading zipp-3.11.0-py3-none-any.whl (6.6 kB)
Collecting pyparsing!=3.0.5,>=2.0.2
  Downloading pyparsing-3.0.9-py3-none-any.whl (98 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 98.3/98.3 KB 182.0 MB/s eta 0:00:00
Collecting greenlet!=0.4.17
  Downloading greenlet-2.0.1-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (535 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 535.9/535.9 KB 142.0 MB/s eta 0:00:00
Collecting attrs>=17.4.0
  Downloading attrs-22.1.0-py2.py3-none-any.whl (58 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 58.8/58.8 KB 108.7 MB/s eta 0:00:00
Collecting pyrsistent!=0.17.0,!=0.17.1,!=0.17.2,>=0.14.0
  Downloading pyrsistent-0.19.2-py3-none-any.whl (57 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 57.5/57.5 KB 126.2 MB/s eta 0:00:00
Installing collected packages: pytz, aniso8601, zipp, pyrsistent, pyparsing, psycopg2-binary, MarkupSafe, itsdangerous, gunicorn, greenlet, click, attrs, Werkzeug, SQLAlchemy, packaging, jsonschema, Jinja2, importlib-metadata, marshmallow, Flask, flask-sqlalchemy, flask_restx
Successfully installed Flask-2.2.2 Jinja2-3.1.2 MarkupSafe-2.1.1 SQLAlchemy-1.4.44 Werkzeug-2.2.2 aniso8601-9.0.1 attrs-22.1.0 click-8.1.3 flask-sqlalchemy-3.0.2 flask_restx-1.0.3 greenlet-2.0.1 gunicorn-20.1.0 importlib-metadata-5.1.0 itsdangerous-2.1.2 jsonschema-4.17.3 marshmallow-3.19.0 packaging-21.3 psycopg2-binary-2.9.5 pyparsing-3.0.9 pyrsistent-0.19.2 pytz-2022.6 zipp-3.11.0
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
WARNING: You are using pip version 22.0.4; however, version 22.3.1 is available.
You should consider upgrading via the '/usr/local/bin/python3 -m pip install --upgrade pip' command.
Removing intermediate container 8088c6d31743
 ---> fdb778fb85cf
Step 6/7 : COPY . .
 ---> e32b3fa29a82
Step 7/7 : ENTRYPOINT ["sh", "entrypoint.sh"]
 ---> Running in 78bc3ffc9795
Removing intermediate container 78bc3ffc9795
 ---> 8790d4fe209a
Successfully built 8790d4fe209a
Successfully tagged masyanja/hosting:v0.1.0
WARNING: Image for service web was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Pulling db (postgres:)...
latest: Pulling from library/postgres
a603fa5e3b41: Pull complete
02d7a77348fd: Pull complete
16b62ca80c8f: Pull complete
fbd795da1fe1: Pull complete
9c68de39d930: Pull complete
2e441a95082c: Pull complete
1c97f440fe14: Pull complete
87a3f78bc5d1: Pull complete
264b18cba666: Pull complete
bea1513c492d: Pull complete
ed48cace97fa: Pull complete
e3c377e275ff: Pull complete
86fa351e30cb: Pull complete
Digest: sha256:766e8867182b474f02e48c7b1a556d12ddfa246138ddc748d70c891bf2873d82
Status: Downloaded newer image for postgres:latest
Creating app_web_1 ... 
Creating app_web_1 ... error
WARNING: Host is already in use by another container

ERROR: for app_web_1  Cannot start service web: driver failed programming external connectivity on endpoint app_web_1 (c7ecfadf762e14e4857Creating app_db_1  ... done

ERROR: for web  Cannot start service web: driver failed programming external connectivity on endpoint app_web_1 (c7ecfadf762e14e485727244552820f1e659c8e00297e41f92980e9171c36ecc): Error starting userland proxy: listen tcp4 0.0.0.0:80: bind: address already in use
ERROR: Encountered errors while bringing up the project.
mkoliada@assign:~/app$ nano docker-compose up

mkoliada@assign:~/app$ nano docker-compose.yaml

  GNU nano 6.2                                                docker-compose.yaml                                                         
version: '3.3'

services:
  web:
    build: .
    image: masyanja/hosting:v0.1.0
    ports:
      - "80:25000" вот здесь поменять на 8080
    environment:
      - DB_PASSWORD=db_password
      - DB_USER=db_user
      - DB_NAME=db_name
  db:
    image: postgres
    environment:
      - POSTGRES_PASSWORD=db_password
      - POSTGRES_USER=db_user
      - POSTGRES_DB=db_name





^G Help          ^O Write Out     ^W Where Is      ^K Cut           ^T Execute       ^C Location      M-U Undo         M-A Set Mark
^X Exit     
^R Read File     ^\ Replace       ^U Paste         ^J Justify       ^/ Go To Line    M-E Redo         M-6 Copy

ssh mkoliada@51.250.75.132

Last login: Thu Dec  1 04:33:02 on ttys002
(base) kolyada@MacBook-Air-MARIA ~ % ssh mkoliada@51.250.75.132
Welcome to Ubuntu 22.04.1 LTS (GNU/Linux 5.15.0-52-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Dec  1 01:43:52 AM UTC 2022

  System load:  0.080078125       Processes:                151
  Usage of /:   66.1% of 9.76GB   Users logged in:          1
  Memory usage: 41%               IPv4 address for docker0: 172.17.0.1
  Swap usage:   0%                IPv4 address for eth0:    10.128.0.34

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

10 updates can be applied immediately.
1 of these updates is a standard security update.
To see these additional updates run: apt list --upgradable


*** System restart required ***
Last login: Thu Dec  1 01:33:37 2022 from 196.196.53.132
mkoliada@assign:~$ cd app
mkoliada@assign:~/app$ sudo docker-compose up
Creating network "app_default" with the default driver
Creating app_web_1 ... 
Creating app_web_1 ... error
WARNING: Host is already in use by another container

ERROR: for app_web_1  Cannot start service web: driver failed programming external connectivity on endpoint app_web_1 (3b0148b6b269e221e084089186c5b80750967f776bb2ebd58244d6eec2296fee): Error starting userland proxy: listen tcp4 0.0.0.0:80:Creating app_db_1  ... done

ERROR: for web  Cannot start service web: driver failed programming external connectivity on endpoint app_web_1 (3b0148b6b269e221e084089186c5b80750967f776bb2ebd58244d6eec2296fee): Error starting userland proxy: listen tcp4 0.0.0.0:80: bind: address already in use
ERROR: Encountered errors while bringing up the project.
mkoliada@assign:~/app$ netstat -pna | grep 80
Command 'netstat' not found, but can be installed with:
apt install net-tools
mkoliada@assign:~/app$ sudo apt install net-tools
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages were automatically installed and are no longer required:
  libflashrom1 libftdi1-2
Use 'sudo apt autoremove' to remove them.
The following NEW packages will be installed:
  net-tools
0 upgraded, 1 newly installed, 0 to remove and 10 not upgraded.
Need to get 204 kB of archives.
After this operation, 819 kB of additional disk space will be used.
Get:1 http://ru.archive.ubuntu.com/ubuntu jammy/main amd64 net-tools amd64 1.60+git20181103.0eebece-1ubuntu5 [204 kB]
Fetched 204 kB in 0s (3,194 kB/s) 
Selecting previously unselected package net-tools.
(Reading database ... 118633 files and directories currently installed.)
Preparing to unpack .../net-tools_1.60+git20181103.0eebece-1ubuntu5_amd64.deb ...
Unpacking net-tools (1.60+git20181103.0eebece-1ubuntu5) ...
Setting up net-tools (1.60+git20181103.0eebece-1ubuntu5) ...
Processing triggers for man-db (2.10.2-1) ...
Scanning processes...                                                                                    
Scanning candidates...                                                                                   
Scanning linux images...                                                                                 

Restarting services...
Service restarts being deferred:
 /etc/needrestart/restart.d/dbus.service
 systemctl restart networkd-dispatcher.service
 systemctl restart unattended-upgrades.service

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
mkoliada@assign:~/app$ netstat -pna | grep 3000
(Not all processes could be identified, non-owned process info
 will not be shown, you would have to be root to see it all.)
mkoliada@assign:~/app$ netstat -pna | grep 80
(Not all processes could be identified, non-owned process info
 will not be shown, you would have to be root to see it all.)
tcp        0      0 0.0.0.0:8080            0.0.0.0:*               LISTEN      -                   
tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN      -                   
tcp        0      0 10.128.0.34:46626       213.180.204.183:80      TIME_WAIT   -                   
tcp        0      0 10.128.0.34:8080        172.104.242.173:35063   ESTABLISHED -                   
tcp        0      0 10.128.0.34:80          172.104.242.173:35063   ESTABLISHED -                   
unix  3      [ ]         STREAM     CONNECTED     20805    -                    
unix  2      [ ]         DGRAM      CONNECTED     18013    -                    
unix  3      [ ]         STREAM     CONNECTED     19809    -                    
mkoliada@assign:~/app$ sudo lsof -i -P -n | grep 80
flask      97763            root    4u  IPv4 500577      0t0  TCP *:8080 (LISTEN)
flask      97763            root    5u  IPv4 594538      0t0  TCP 10.128.0.34:8080->172.104.242.173:35063 (ESTABLISHED)
flask     100052            root    4u  IPv4 512662      0t0  TCP *:80 (LISTEN)
flask     100052            root    5u  IPv4 593665      0t0  TCP 10.128.0.34:80->172.104.242.173:35063 (ESTABLISHED)
flask     100052            root    6u  IPv4 512662      0t0  TCP *:80 (LISTEN)
mkoliada@assign:~/app$ kill -9 97763
-bash: kill: (97763) - Operation not permitted
mkoliada@assign:~/app$ exit
logout
Connection to 51.250.75.132 closed.
(base) kolyada@MacBook-Air-MARIA ~ % sudo lsof -i -P -n | grep 80
Password:
remoted    109            root    4u  IPv6 0x62c44216bfaa8cc1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49153->[fe80:4::aede:48ff:fe33:4455]:59602 (ESTABLISHED)
remoted    109            root    5u  IPv6 0x62c44216bfaa9441      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49154 (LISTEN)
remoted    109            root    6u  IPv6 0x62c44216bfaa9bc1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49155 (LISTEN)
remoted    109            root    7u  IPv6 0x62c44216bfaaa341      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49156 (LISTEN)
remoted    109            root    8u  IPv6 0x62c44216bfaaaac1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49157 (LISTEN)
remoted    109            root    9u  IPv6 0x62c44216bfaab241      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49158 (LISTEN)
remoted    109            root   10u  IPv6 0x62c44216bfaab9c1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49159 (LISTEN)
remoted    109            root   11u  IPv6 0x62c44216bfaac141      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49160 (LISTEN)
remoted    109            root   12u  IPv6 0x62c44216bfaac8c1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49161 (LISTEN)
remoted    109            root   13u  IPv6 0x62c44216bfaad041      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49162 (LISTEN)
remoted    109            root   14u  IPv6 0x62c44216bfaad7c1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49163 (LISTEN)
findmydev  225            root    3u  IPv6 0x62c44216bfaae6c1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49164->[fe80:4::aede:48ff:fe33:4455]:49409 (ESTABLISHED)
SubmitDia  238            root    3u  IPv6 0x62c44216bfaadf41      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49159->[fe80:4::aede:48ff:fe33:4455]:49426 (ESTABLISHED)
SubmitDia  238            root    4u  IPv6 0x62c44216bfaa65c1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49169->[fe80:4::aede:48ff:fe33:4455]:49400 (ESTABLISHED)
bosUpdate  239 _softwareupdate    3u  IPv6 0x62c44216bfaa4f41      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:50619->[fe80:4::aede:48ff:fe33:4455]:49418 (ESTABLISHED)
corekdld   240            root    3u  IPv6 0x62c44216bfaafd41      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49167->[fe80:4::aede:48ff:fe33:4455]:49412 (ESTABLISHED)
mobileact  243            root    3u  IPv6 0x62c44216bfaaee41      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49165->[fe80:4::aede:48ff:fe33:4455]:49406 (ESTABLISHED)
mobileact  243            root    5u  IPv6 0x62c44216bfaaf5c1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49166->[fe80:4::aede:48ff:fe33:4455]:49406 (ESTABLISHED)
mobileact  243            root    6u  IPv6 0x62c44216bfa9f541      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49176->[fe80:4::aede:48ff:fe33:4455]:49406 (ESTABLISHED)
mobileact  243            root   10u  IPv6 0x62c44216bfaa3141      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:50565->[fe80:4::aede:48ff:fe33:4455]:49406 (ESTABLISHED)
mobileact  243            root   13u  IPv6 0x62c44216bfaa5e41      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:50571->[fe80:4::aede:48ff:fe33:4455]:49406 (ESTABLISHED)
mobileact  243            root   14u  IPv6 0x62c44216bfaa6d41      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:50572->[fe80:4::aede:48ff:fe33:4455]:49406 (ESTABLISHED)
mobileact  243            root   15u  IPv6 0x62c44216bfaa1ac1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:50578->[fe80:4::aede:48ff:fe33:4455]:49406 (ESTABLISHED)
mobileact  243            root   16u  IPv6 0x62c44216bfaa38c1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:50579->[fe80:4::aede:48ff:fe33:4455]:49406 (ESTABLISHED)
mobileact  243            root   17u  IPv6 0x62c44216bfaa56c1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:50620->[fe80:4::aede:48ff:fe33:4455]:49406 (ESTABLISHED)
mobileact  243            root   18u  IPv6 0x62c44216bfaa29c1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:50643->[fe80:4::aede:48ff:fe33:4455]:49406 (ESTABLISHED)
biometric  298            root    3u  IPv6 0x62c44216bfaa8541      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49168->[fe80:4::aede:48ff:fe33:4455]:49420 (ESTABLISHED)
netbiosd   380        _netbios    3u  IPv4 0x62c44211f37ff7f1      0t0    UDP *:137
netbiosd   380        _netbios    4u  IPv4 0x62c44211f37ff4c1      0t0    UDP *:138
rapportd   411         kolyada   12u  IPv6 0x62c44216bfaa47c1      0t0    TCP [fe80:6::1ca0:b24d:98f9:2f74]:49179->[fe80:6::c14:26d2:b453:e8bb]:56195 (ESTABLISHED)
rapportd   411         kolyada   21u  IPv6 0x62c44216bfaa2241      0t0    TCP [fe80:6::1ca0:b24d:98f9:2f74]:49182->[fe80:6::1872:830b:4c1f:2ae6]:49155 (ESTABLISHED)
identitys  436         kolyada   35u  IPv6 0x62c44216bfa965c1      0t0    TCP [fe80:10::9134:f88c:dba:ef57]:1024->[fe80:10::c5a0:f7cb:57b:2268]:1024 (SYN_SENT)
identitys  436         kolyada   58u  IPv6 0x62c44216be758341      0t0    TCP [fe80:f::bbe6:c3dc:fc16:b1f7]:1024->[fe80:f::c786:284a:c92d:95b6]:1024 (ESTABLISHED)
identitys  436         kolyada   65u  IPv6 0x62c44216bfa8fcc1      0t0    TCP [fe80:f::bbe6:c3dc:fc16:b1f7]:1026->[fe80:f::c786:284a:c92d:95b6]:1025 (ESTABLISHED)
identitys  436         kolyada   66u  IPv6 0x62c44216bfa8fcc1      0t0    TCP [fe80:f::bbe6:c3dc:fc16:b1f7]:1026->[fe80:f::c786:284a:c92d:95b6]:1025 (ESTABLISHED)
identitys  436         kolyada   70u  IPv6 0x62c44216be758ac1      0t0    TCP [fe80:13::d644:f341:11cc:2f80]:1024->[fe80:13::8877:df0e:18ee:d501]:1024 (ESTABLISHED)
identitys  436         kolyada   74u  IPv6 0x62c44216bfa9fcc1      0t0    TCP [fe80:13::d644:f341:11cc:2f80]:1026->[fe80:13::8877:df0e:18ee:d501]:1025 (ESTABLISHED)
identitys  436         kolyada   75u  IPv6 0x62c44216bfa9fcc1      0t0    TCP [fe80:13::d644:f341:11cc:2f80]:1026->[fe80:13::8877:df0e:18ee:d501]:1025 (ESTABLISHED)
Opera\x20  562         kolyada   26u  IPv4 0x62c442085efd3be9      0t0    TCP 10.2.18.2:50178->185.137.235.80:443 (ESTABLISHED)
PowerChim  702         kolyada    3u  IPv6 0x62c44216bfa9e5c1      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49298->[fe80:4::aede:48ff:fe33:4455]:49424 (ESTABLISHED)
corespeec  789         kolyada    3u  IPv6 0x62c44216bfa8f541      0t0    TCP [fe80:4::aede:48ff:fe00:1122]:49510->[fe80:4::aede:48ff:fe33:4455]:49425 (ESTABLISHED)
(base) kolyada@MacBook-Air-MARIA ~ % kill 109
kill: kill 109 failed: operation not permitted
(base) kolyada@MacBook-Air-MARIA ~ % sudo lsof -i -P -n | grep 0 0.0.0.0:8080 
grep: 0.0.0.0:8080: No such file or directory
(base) kolyada@MacBook-Air-MARIA ~ % sudo lsof -i -P -n | grep 8080          
(base) kolyada@MacBook-Air-MARIA ~ % sudo nginx -s stop
Password:
sudo: nginx: command not found
(base) kolyada@MacBook-Air-MARIA ~ % sh mkoliada@51.250.75.132
sh: mkoliada@51.250.75.132: No such file or directory
(base) kolyada@MacBook-Air-MARIA ~ % shh mkoliada@51.250.75.132
zsh: command not found: shh
(base) kolyada@MacBook-Air-MARIA ~ % ssh mkoliada@51.250.75.132
Welcome to Ubuntu 22.04.1 LTS (GNU/Linux 5.15.0-52-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Dec  1 11:32:07 AM UTC 2022

  System load:  0.0               Users logged in:                  1
  Usage of /:   66.6% of 9.76GB   IPv4 address for br-160002800a44: 172.19.0.1
  Memory usage: 39%               IPv4 address for docker0:         172.17.0.1
  Swap usage:   0%                IPv4 address for eth0:            10.128.0.34
  Processes:    154

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

9 updates can be applied immediately.
To see these additional updates run: apt list --upgradable


*** System restart required ***
Last login: Thu Dec  1 01:43:53 2022 from 196.196.53.132
mkoliada@assign:~$ cd app
mkoliada@assign:~/app$ sudo docker-compose up
Starting app_web_1 ... 
app_db_1 is up-to-date
Starting app_web_1 ... error

ERROR: for app_web_1  Cannot start service web: driver failed programming external connectivity on endpoint app_web_1 (edd958932a2ac2cc82fc68a97aa2200804785280708a28b4a14565d1f71b3d59): Error starting userland proxy: listen tcp4 0.0.0.0:80: bind: address already in use

ERROR: for web  Cannot start service web: driver failed programming external connectivity on endpoint app_web_1 (edd958932a2ac2cc82fc68a97aa2200804785280708a28b4a14565d1f71b3d59): Error starting userland proxy: listen tcp4 0.0.0.0:80: bind: address already in use
ERROR: Encountered errors while bringing up the project.
mkoliada@assign:~/app$ nano docker-compose.yaml
mkoliada@assign:~/app$ sudo docker-compose up
Recreating app_web_1 ... 
Recreating app_web_1 ... done
Attaching to app_db_1, app_web_1
db_1   | The files belonging to this database system will be owned by user "postgres".
db_1   | This user must also own the server process.
db_1   | 
db_1   | The database cluster will be initialized with locale "en_US.utf8".
db_1   | The default database encoding has accordingly been set to "UTF8".
db_1   | The default text search configuration will be set to "english".
db_1   | 
db_1   | Data page checksums are disabled.
db_1   | 
db_1   | fixing permissions on existing directory /var/lib/postgresql/data ... ok
db_1   | creating subdirectories ... ok
db_1   | selecting dynamic shared memory implementation ... posix
db_1   | selecting default max_connections ... 100
db_1   | selecting default shared_buffers ... 128MB
db_1   | selecting default time zone ... Etc/UTC
db_1   | creating configuration files ... ok
db_1   | running bootstrap script ... ok
db_1   | performing post-bootstrap initialization ... ok
db_1   | syncing data to disk ... ok
db_1   | 
db_1   | 
db_1   | Success. You can now start the database server using:
db_1   | 
db_1   |     pg_ctl -D /var/lib/postgresql/data -l logfile start
db_1   | 
db_1   | initdb: warning: enabling "trust" authentication for local connections
db_1   | initdb: hint: You can change this by editing pg_hba.conf or using the option -A, or --auth-local and --auth-host, the next time you run initdb.
db_1   | waiting for server to start....2022-12-01 01:44:14.626 UTC [48] LOG:  starting PostgreSQL 15.1 (Debian 15.1-1.pgdg110+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 10.2.1-6) 10.2.1 20210110, 64-bit
db_1   | 2022-12-01 01:44:14.641 UTC [48] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
db_1   | 2022-12-01 01:44:14.695 UTC [51] LOG:  database system was shut down at 2022-12-01 01:44:13 UTC
db_1   | 2022-12-01 01:44:14.711 UTC [48] LOG:  database system is ready to accept connections
db_1   |  done
db_1   | server started
db_1   | CREATE DATABASE
db_1   | 
db_1   | 
db_1   | /usr/local/bin/docker-entrypoint.sh: ignoring /docker-entrypoint-initdb.d/*
db_1   | 
db_1   | waiting for server to shut down....2022-12-01 01:44:15.116 UTC [48] LOG:  received fast shutdown request
db_1   | 2022-12-01 01:44:15.135 UTC [48] LOG:  aborting any active transactions
db_1   | 2022-12-01 01:44:15.138 UTC [48] LOG:  background worker "logical replication launcher" (PID 54) exited with exit code 1
db_1   | 2022-12-01 01:44:15.146 UTC [49] LOG:  shutting down
db_1   | 2022-12-01 01:44:15.162 UTC [49] LOG:  checkpoint starting: shutdown immediate
db_1   | 2022-12-01 01:44:15.441 UTC [49] LOG:  checkpoint complete: wrote 918 buffers (5.6%); 0 WAL file(s) added, 0 removed, 0 recycled; write=0.171 s, sync=0.052 s, total=0.296 s; sync files=250, longest=0.046 s, average=0.001 s; distance=4217 kB, estimate=4217 kB
db_1   | 2022-12-01 01:44:15.452 UTC [48] LOG:  database system is shut down
db_1   |  done
db_1   | server stopped
db_1   | 
db_1   | PostgreSQL init process complete; ready for start up.
db_1   | 
db_1   | 2022-12-01 01:44:15.587 UTC [1] LOG:  starting PostgreSQL 15.1 (Debian 15.1-1.pgdg110+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 10.2.1-6) 10.2.1 20210110, 64-bit
db_1   | 2022-12-01 01:44:15.595 UTC [1] LOG:  listening on IPv4 address "0.0.0.0", port 5432
db_1   | 2022-12-01 01:44:15.595 UTC [1] LOG:  listening on IPv6 address "::", port 5432
db_1   | 2022-12-01 01:44:15.617 UTC [1] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
db_1   | 2022-12-01 01:44:15.637 UTC [63] LOG:  database system was shut down at 2022-12-01 01:44:15 UTC
db_1   | 2022-12-01 01:44:15.650 UTC [1] LOG:  database system is ready to accept connections
db_1   | 2022-12-01 01:49:15.736 UTC [61] LOG:  checkpoint starting: time
db_1   | 2022-12-01 01:49:19.936 UTC [61] LOG:  checkpoint complete: wrote 44 buffers (0.3%); 0 WAL file(s) added, 0 removed, 0 recycled; write=4.160 s, sync=0.010 s, total=4.200 s; sync files=12, longest=0.007 s, average=0.001 s; distance=252 kB, estimate=252 kB
web_1  |  * Serving Flask app 'run.py'
web_1  |  * Debug mode: off
web_1  | WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
web_1  |  * Running on all addresses (0.0.0.0)
web_1  |  * Running on http://127.0.0.1:25000
web_1  |  * Running on http://172.19.0.3:25000
web_1  | Press CTRL+C to quit

