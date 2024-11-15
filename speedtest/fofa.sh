#!/bin/bash
# cd /root/iptv
# read -p "确定要运行脚本吗？(y/n): " choice

# 判断用户的选择，如果不是"y"则退出脚本
# if [ "$choice" != "y" ]; then
#     echo "脚本已取消."
#     exit 0
# fi

time=$(date +%m%d%H%M)
i=0

if [ $# -eq 0 ]; then
  echo "请选择城市："
   echo "1. 广东广州（Guangdong1）"
   echo "2. 广东深圳（Guangdong2）"
   echo "3. 广东东莞（Guangdong3）"
    echo "4. 广东中山（Guangdong4）"
       echo "5. 广东韶关（Guangdong5）"
   echo "6. 广东珠海（Guangdong6）"
   echo "7. 广东汕头（Guangdong7）"
    echo "8. 广东汕尾（Guangdong8）"
       echo "9. 广东佛山（Guangdong9）"
   echo "10. 广东河源（Guangdong10）"
   echo "11. 广东梅州（Guangdong11）"
    echo "12. 广东阳江（Guangdong12）"
       echo "13. 广东江门（Guangdong13）"
   echo "14. 广东茂名（Guangdong14）"
   echo "15. 广东湛江（Guangdong15）"
    echo "16. 广东肇庆（Guangdong16）"
       echo "17. 广东清远（Guangdong17）"
   echo "18. 广东惠州（Guangdong18）"
   echo "19. 广东云浮（Guangdong19）"
    echo "20. 广东揭阳（Guangdong20）"
       echo "21. 广东潮州（Guangdong21）"

  
  echo "0. 全部"
  read -t 10 -p "输入选择或在10秒内无输入将默认选择全部: " city_choice

  if [ -z "$city_choice" ]; then
      echo "未检测到输入，自动选择全部选项..."
      city_choice=0
  fi

else
  city_choice=$1
fi

# 根据用户选择设置城市和相应的stream
case $city_choice in
    1)
        city="Guangdong1"
        stream="udp/239.77.0.173:5146"
        channel_key="广东广州"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Guangzhou"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    2)
        city="Guangdong2"
        stream="udp/239.77.0.173:5146"
	channel_key="广东深圳"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Shenzhen"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    3)
        city="Guangdong3"
        stream="rtp/239.77.0.173:5146"
        channel_key="广东东莞"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Dongguan"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    4)
        city="Guangdong4"
        stream="udp/239.77.0.173:5146"
        channel_key="广东中山"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Zhongshan"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    5)
        city="Guangdong5"
        stream="udp/239.77.0.173:5146"
	channel_key="广东肇庆"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Zhaoqing"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    6)
        city="Guangdong6"
        stream="rtp/239.77.0.173:5146"
        channel_key="广东珠海"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Zhuhai"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    7)
        city="Guangdong7"
        stream="udp/239.77.0.173:5146"
        channel_key="广东汕头"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Shantou"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    8)
        city="Guangdong8"
        stream="udp/239.77.0.173:5146"
	channel_key="广东汕尾"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Shanwei"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    9)
        city="Guangdong9"
        stream="rtp/239.77.0.173:5146"
        channel_key="广东佛山"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Foshan"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    10)
        city="Guangdong10"
        stream="udp/239.77.0.173:5146"
        channel_key="广东河源"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Heyuan"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    11)
        city="Guangdong11"
        stream="udp/239.77.0.173:5146"
	channel_key="广东梅州"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Meizhou"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    12)
        city="Guangdong12"
        stream="rtp/239.77.0.173:5146"
        channel_key="广东阳江"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Yangjiang"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    13)
        city="Guangdong13"
        stream="rtp/239.77.0.173:5146"
        channel_key="广东江门"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Jiangmen"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    14)
        city="Guangdong14"
        stream="udp/239.77.0.173:5146"
        channel_key="广东茂名"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Maoming"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    15)
        city="Guangdong15"
        stream="udp/239.77.0.173:5146"
	channel_key="广东湛江"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Zhanjiang"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    16)
        city="Guangdong16"
        stream="rtp/239.77.0.173:5146"
        channel_key="广东肇庆"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Zhaoqing"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    17)
        city="Guangdong17"
        stream="udp/239.77.0.173:5146"
        channel_key="广东清远"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Qingyuan"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    18)
        city="Guangdong18"
        stream="udp/239.77.0.173:5146"
	channel_key="广东惠州"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Huizhou"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    19)
        city="Guangdong19"
        stream="rtp/239.77.0.173:5146"
        channel_key="广东云浮"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Yunfu"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    20)
        city="Guangdong20"
        stream="udp/239.77.0.173:5146"
        channel_key="广东揭阳"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="Jieyang"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
    21)
        city="Guangdong21"
        stream="udp/239.77.0.173:5146"
	channel_key="广东潮州"
        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && protocol="http" && city="chaozhou"' | base64 |tr -d '\n')
        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        ;;
   
    0)
        # 如果选择是“全部选项”，则逐个处理每个选项
        for option in {1..19}; do
          bash  "$0" $option  # 假定fofa.sh是当前脚本的文件名，$option将递归调用
        done
        exit 0
        ;;

    *)
        echo "错误：无效的选择。"
        exit 1
        ;;
esac



# 使用城市名作为默认文件名，格式为 CityName.ip
ipfile="ip/${city}.ip"
only_good_ip="ip/${city}.onlygood.ip"
rm -f $only_good_ip
# 搜索最新 IP
echo "===============从 fofa 检索 ip+端口================="
curl -o test.html "$url_fofa"
#echo $url_fofa
echo "$ipfile"
grep -E '^\s*[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+:[0-9]+$' test.html | grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+:[0-9]+' > "$ipfile"
rm -f test.html
# 遍历文件 A 中的每个 IP 地址
while IFS= read -r ip; do
    # 尝试连接 IP 地址和端口号，并将输出保存到变量中
    tmp_ip=$(echo -n "$ip" | sed 's/:/ /')
    echo "nc -w 1 -v -z $tmp_ip 2>&1"
    output=$(nc -w 1 -v -z $tmp_ip 2>&1)
    echo $output    
    # 如果连接成功，且输出包含 "succeeded"，则将结果保存到输出文件中
    if [[ $output == *"succeeded"* ]]; then
        # 使用 awk 提取 IP 地址和端口号对应的字符串，并保存到输出文件中
        echo "$output" | grep "succeeded" | awk -v ip="$ip" '{print ip}' >> "$only_good_ip"
    fi
done < "$ipfile"

echo "===============检索完成================="

# 检查文件是否存在
if [ ! -f "$only_good_ip" ]; then
    echo "错误：文件 $only_good_ip 不存在。"
    exit 1
fi

lines=$(wc -l < "$only_good_ip")
echo "【$only_good_ip】内 ip 共计 $lines 个"

i=0
time=$(date +%Y%m%d%H%M%S) # 定义 time 变量
while IFS= read -r line; do
    i=$((i + 1))
    ip="$line"
    url="http://$ip/$stream"
    echo "$url"
    curl "$url" --connect-timeout 3 --max-time 10 -o /dev/null >zubo.tmp 2>&1
    a=$(head -n 3 zubo.tmp | awk '{print $NF}' | tail -n 1)

    echo "第 $i/$lines 个：$ip $a"
    echo "$ip $a" >> "speedtest_${city}_$time.log"
done < "$only_good_ip"

rm -f zubo.tmp
awk '/M|k/{print $2"  "$1}' "speedtest_${city}_$time.log" | sort -n -r >"result/result_fofa_${city}.txt"
cat "result/result_fofa_${city}.txt"
ip1=$(awk 'NR==1{print $2}' result/result_fofa_${city}.txt)
ip2=$(awk 'NR==2{print $2}' result/result_fofa_${city}.txt)
ip3=$(awk 'NR==3{print $2}' result/result_fofa_${city}.txt)
rm -f "speedtest_${city}_$time.log"


# 用 3 个最快 ip 生成对应城市的 txt 文件
program="template/template_${city}.txt"

sed "s/ipipip/$ip1/g" "$program" > tmp1.txt
sed "s/ipipip/$ip2/g" "$program" > tmp2.txt
sed "s/ipipip/$ip3/g" "$program" > tmp3.txt
cat tmp1.txt tmp2.txt tmp3.txt > "txt/fofa_${city}.txt"

rm -rf tmp1.txt tmp2.txt tmp3.txt
rm -rf live.txt

#--------------------合并所有城市的txt文件为:   zubo_fofa.txt-----------------------------------------
echo "" >>live.txt
cat txt/fofa_Guangdong1.txt >>live.txt




for a in result/*.txt; do echo "";echo "========================= $(basename "$a") ==================================="; cat $a; done
