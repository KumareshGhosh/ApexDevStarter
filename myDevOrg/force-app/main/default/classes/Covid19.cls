public class Covid19 {
	public integer recoveredInArea;
    public static integer recoveredInCountry=0;
    public covid19(integer stateCount){
        this.recoveredInArea=stateCount;
        recoveredInCountry+=recoveredInArea;
    }
    //arial and country total count increase:
    public void getTreated(){
        recoveredInArea++;
        recoveredInCountry++;
    }
    //only arial count increase not country count:
    public void arialTreatment(){
        recoveredInArea++;
    }
}