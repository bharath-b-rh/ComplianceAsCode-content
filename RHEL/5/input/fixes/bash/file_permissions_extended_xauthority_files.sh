cut -d: -f6 /etc/passwd | sort -u | xargs -n1 -IDIR find DIR -maxdepth 1 -name .Xauthority -o -name .xauth 2>/dev/null | xargs setfacl --remove-all