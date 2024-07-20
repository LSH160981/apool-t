sudo apt update && sudo apt install ufw && apt update -y  && apt install -y curl

# 下载和解压 apoolminer 软件
wget -P /root https://github.com/apool-io/apoolminer/releases/download/v1.6.10/apoolminer_linux_v1.6.10.tar
tar -xf /root/apoolminer_linux_v1.6.10.tar -C /root

# 修改脚本中的内容
sed -i 's/CP_32hb86nvxc/CP_6i7k2ek920/g' /root/run_qubic_cpu.sh

# 修改系统配置
sudo bash -c "echo vm.nr_hugepages=960 >> /etc/sysctl.conf"

# 执行脚本
cd /root
./run_qubic_cpu.sh
