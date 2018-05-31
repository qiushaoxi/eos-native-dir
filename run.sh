nohup nodeos  \
--data-dir ./data --config-dir ./config  > ./logs/eos.log 2>&1 &
echo $! > eos.pid
