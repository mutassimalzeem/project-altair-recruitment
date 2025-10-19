docker run --rm -v "${PWD}:/host" ubuntu:22.04 bash -c "
  echo 'System log example' > /root/system_log.txt;
  echo 'Error log example' > /root/errorlog.txt;
  echo 'Not a log file' > /root/readme.txt;
  mkdir -p /root/logs;
  mv /root/*log* /root/logs/ || true;
  cp -r /root/logs /host/;
  echo 'Files moved to /root/logs and copied to host as ./logs';
  ls -la /host/logs;
"
