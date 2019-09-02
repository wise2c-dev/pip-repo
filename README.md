# 1. write the pip.conf
```
REPO_HOST=deploy
mkdir /root/.pip/
cat > /root/.pip/pip.conf << EOF
[global]
index-url = http://deploy:2008/simple/
disable-pip-version-check = true
timeout = 30

[install]
trusted-host=deploy
EOF
```

# 2. yq install test
```
pip uninstall yq -y
pip install yq 
```