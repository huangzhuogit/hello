package org.tp.ssm_tpzy.util;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.QuerySendDetailsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.QuerySendDetailsResponse;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.dysmsapi.transform.v20170525.SendSmsResponseUnmarshaller;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.FormatType;
import com.aliyuncs.http.HttpResponse;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;

import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

/**
 * Created on 17/6/7.
 * 閻厺淇夾PI娴溠冩惂閻ㄥ嚍EMO缁嬪绨�,瀹搞儳鈻兼稉顓炲瘶閸氼偂绨℃稉锟芥稉鐚刴sDemo缁紮绱濋惄瀛樺复闁俺绻�
 * 閹笛嗩攽main閸戣姤鏆熼崡鍐插讲娴ｆ捇鐛欓惌顓濅繆娴溠冩惂API閸旂喕鍏�(閸欘亪娓剁憰浣哥殺AK閺囨寧宕查幋鎰磻闁矮绨℃禍鎴︼拷姘繆-閻厺淇婃禍褍鎼ч崝鐔诲厴閻ㄥ嚈K閸楀啿褰�)
 * 瀹搞儳鈻兼笟婵婄娴滐拷2娑撶尐ar閸栵拷(鐎涙ɑ鏂侀崷銊ヤ紣缁嬪娈憀ibs閻╊喖缍嶆稉锟�)
 * 1:aliyun-java-sdk-core.jar
 * 2:aliyun-java-sdk-dysmsapi.jar
 *
 * 婢跺洦鏁�:Demo瀹搞儳鈻肩紓鏍垳闁插洨鏁TF-8
 * 閸ヤ粙妾惌顓濅繆閸欐垿锟戒浇顕崟鍨棘閻撗勵劃DEMO
 */
public class SmsDemo {

    //娴溠冩惂閸氬秶袨:娴滄垿锟芥矮淇婇惌顓濅繆API娴溠冩惂,瀵拷閸欐垼锟藉懏妫ら棁锟介弴鎸庡床
    static  String product = "Dysmsapi";
    //娴溠冩惂閸╃喎鎮�,瀵拷閸欐垼锟藉懏妫ら棁锟介弴鎸庡床
    static  String domain = "dysmsapi.aliyuncs.com";

    // TODO 濮濄倕顦╅棁锟界憰浣规禌閹广垺鍨氬锟介崣鎴ｏ拷鍛板殰瀹歌京娈慉K(閸︺劑妯嬮柌灞肩隘鐠佸潡妫堕幒褍鍩楅崣鏉款嚢閹碉拷)
    static  String accessKeyId = "LTAIUgmZAcLYhxiB";
    static  String accessKeySecret = "a0gxtCUDLO1G2P2jancP3jOFINLjXd";

    public static SendSmsResponse sendSms(String Numbers,String code) throws ClientException {

        //閸欘垵鍤滈崝鈺勭殶閺佺绉撮弮鑸垫闂傦拷
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");

        //閸掓繂顫愰崠鏈糲sClient,閺嗗倷绗夐弨顖涘瘮region閸栵拷
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);

        //缂佸嫯顥婄拠閿嬬湴鐎电钖�-閸忚渹缍嬮幓蹇氬牚鐟欎焦甯堕崚璺哄酱-閺傚洦銆傞柈銊ュ瀻閸愬懎顔�
        SendSmsRequest request = new SendSmsRequest();
        //韫囧懎锝�:瀵板懎褰傞柅浣瑰閺堝搫褰�13264698373
        request.setPhoneNumbers(Numbers);
        //韫囧懎锝�:閻厺淇婄粵鎯ф倳-閸欘垰婀惌顓濅繆閹貉冨煑閸欓鑵戦幍鎯у煂
        request.setSignName("叶磊");
        //韫囧懎锝�:閻厺淇婂Ο鈩冩緲-閸欘垰婀惌顓濅繆閹貉冨煑閸欓鑵戦幍鎯у煂
        request.setTemplateCode("SMS_139550111");
        //閸欘垶锟斤拷:濡剝婢樻稉顓犳畱閸欐﹢鍣洪弴鎸庡床JSON娑擄拷,婵″倹膩閺夊灝鍞寸�归�涜礋"娴滆尙鍩嶉惃锟�${name},閹劎娈戞宀冪槈閻椒璐�${code}"閺冿拷,濮濄倕顦╅惃鍕拷闂磋礋
        request.setTemplateParam("{\"code\":"+code+"}");

        
        //闁锝�-娑撳﹨顢戦惌顓濅繆閹碘晛鐫嶉惍锟�(閺冪姷澹掑▓濠囨付濮瑰倻鏁ら幋鐤嚞韫囩晫鏆愬銈呯摟濞堬拷)
        //request.setSmsUpExtendCode("90997");

        //閸欘垶锟斤拷:outId娑撶儤褰佹笟娑氱舶娑撴艾濮熼弬瑙勫⒖鐏炴洖鐡у▓锟�,閺堬拷缂佸牆婀惌顓濅繆閸ョ偞澧藉☉鍫熶紖娑擃厼鐨㈠銈咃拷鐓庣敨閸ョ偟绮扮拫鍐暏閼帮拷
        request.setOutId("yourOutId");

        //hint 濮濄倕顦╅崣顖濆厴娴兼碍濮忛崙鍝勭磽鐢潻绱濆▔銊﹀壈catch
        SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);

        return sendSmsResponse;
    }



    public static void main(String[] args) throws ClientException, InterruptedException {

        //閸欐垹鐓穱锟�
    	String codeb=String.valueOf(new Random().nextInt(999999));
        SendSmsResponse response = sendSms("18367183445",codeb);
        if(response.getCode().equalsIgnoreCase("OK")){
        	System.out.println("手机ok");
        	Thread.sleep(3000L);
        }
    }
}
