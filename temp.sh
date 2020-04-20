while true
do

cpu=$(</sys/class/thermal/thermal_zone0/temp)
echo "-------------------------------------------
echo "$(date)
echo "GPU => $(/opt/vc/bin/vcgencmd measure_temp)"
echo "CPU => $((cpu/1000))'C"
echo "VCPU=> $(/opt/vc/bin/vcgencmd measure_volts core)"
vcgencmd measure_clock arm
vcgencmd measure_clock core
vcgencmd measure_clock v3d
sleep 2

done
