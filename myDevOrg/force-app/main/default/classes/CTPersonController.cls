public with sharing class CTPersonController {
    public static string getToken(string mobileNumber) {
        Blob targetBlob = Blob.valueOf('mobileNumber');
        Blob hash = Crypto.generateDigest('MD5', targetBlob);
        return EncodingUtil.base64Encode(hash);
    }
}