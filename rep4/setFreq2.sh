for i in `seq 0 3`
do
    # echo $i
    sudo cpufreq-set -c $i -u $1GHz
    sudo cpufreq-set -c $i -d $1GHz
done
