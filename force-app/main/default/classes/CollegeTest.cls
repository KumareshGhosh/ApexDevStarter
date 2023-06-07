@isTest
public class CollegeTest {
    @isTest
    public static void allTests(){
        college university = new college('MCKV',2000);
        system.assert((university.collegeName == 'MCKV') && (university.birthYear == 2000));
        university.addingStreams(6,500,'Kumaresh','ECE',2018);
        //testing percents():
        system.assertEquals('Kumaresh from MCKV established in 2000 has scored 83 %  . He is from ECE with passing year of 2018', university.percents());
        //testing CGP:
        system.assertEquals('Kumaresh\'s CGPI is 8.7', university.cgpi());//error ,actual cgpi: 8.73684210526315789473684210526316
    }
}