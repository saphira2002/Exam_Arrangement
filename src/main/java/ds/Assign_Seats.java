package ds;

import java.sql.*;

import dab.database;
import java.util.ArrayList;

public class Assign_Seats{

    void AssignAndStore(String theBigDate,int noOfDept, String[][] stu_list){
    int r=5;
    int cr=6;
    int c=(noOfDept*50)/5;
        try{
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
            if(conn != null)
                System.out.println("awesome");
            Statement stmt= conn.createStatement();
            int noOfRowsForEach = c/noOfDept;
            int g;
            System.out.println("No of rows for each dept:  "+noOfRowsForEach);
            ArrayList<ArrayList<String>> availableSeats = new ArrayList<ArrayList<String>>();
            for(int i=0;i<noOfDept;i++){
                availableSeats.add(new ArrayList<String>());
                g=i;
                for(int j=0;j<noOfRowsForEach;j++){
                    for(int k=0;k<r;k++){
                        availableSeats.get(i).add(Integer.toString(g/cr)+" "+Integer.toString(k)+" "+Integer.toString(g%cr));
                       }
                    g+=noOfDept;
                }
                System.out.println(availableSeats.get(i));
                System.out.println("------------------------------------------------------------");
            }
            int noOfPplInEach;
            for(int i=0;i<noOfDept;i++){
                System.out.println("hey");
                noOfPplInEach = stu_list.length;
                System.out.println("No. of ppl in "+i+" dept "+noOfPplInEach);
                for(int j=0;j<noOfPplInEach;j++){
                    PreparedStatement st = conn.prepareStatement("insert into seat_allot values(?,?,?)");
                    st.setObject(1,theBigDate);
                    st.setObject(2,stu_list[j][i]);
                    st.setObject(3,availableSeats.get(i).get(j));
                    st.executeUpdate();
                    System.out.print(stu_list[j][i]+" - "+availableSeats.get(i).get(j)+" | ");
                }
                System.out.println();
            }
        } catch(Exception e) {System.out.println("Inner Catch  "+e);}
    }


    public void Main_Algo(){
        {
            database d = new database();
            try{
                Statement st;
                try{
                    st =d.conn.createStatement();
                    String[] dates = new String[50];
                    int distinct_dates_count = 0;
                    ResultSet rs = st.executeQuery("select distinct(x_date) from timetable order by x_date");
                    String s;
                    String[] a,date_split,yr_split;
                    while(rs.next())
                    {
                        s = rs.getString(1);
                        a=s.split("-");
                        date_split=a[2].split(" ");
                        yr_split= a[0].split("0",2);
                        switch(a[1])
                        {
                            case "01": s = "JAN";
                                    break;
                            case "02": s = "FEB";
                                    break;
                            case "03": s = "MAR";
                                    break;
                            case "04": s = "APR";
                                    break;
                            case "05": s = "MAY";
                                    break;
                            case "06": s = "JUN";
                                    break;
                            case "07": s = "JUL";
                                    break;
                            case "08": s = "AUG";
                                    break;
                            case "09": s = "SEP";
                                    break;
                            case "10": s = "OCT";
                                    break;
                            case "11": s = "NOV";
                                    break;
                            case "12": s = "DEC";
                                    break;
                        }
                        dates[distinct_dates_count] = date_split[0]+"-"+s+"-"+yr_split[1]; 
                        distinct_dates_count++;
                    }
                    for(int j=0;j<distinct_dates_count;j++)
                    {
                        System.out.println("hey");
                        rs = st.executeQuery("select dept from timetable where x_date='"+dates[j]+"'");
                        String[] dept_req = new String[10];
                        int dept_count=0,c;
                        while(rs.next())
                        {
                            dept_req[dept_count] = rs.getString(1);
                            dept_count++;
                        }
                        String[][] stu_id=new String[50][dept_count];
                        for(int l=0;l<dept_count;l++)
                        {
                            System.out.println("hey");
                            c=0;
                            rs = st.executeQuery("select sid from student where dept_sem='"+dept_req[l]+"'");
                            while(rs.next())
                            {
                                stu_id[c][l] = rs.getString(1);
                                c++;           
                            }
                        }
                        System.out.println("Test "+(j+1));
                        AssignAndStore(dates[j],dept_count,stu_id);
                    }
                }catch(Exception e){ System.out.println("Inner TRY  "+e);}
            }catch(Exception e){ System.out.println("System.Outer TRY "+e); }
        }
        System.out.println("Awesome");
    }

        public static void main(String[] args){
        String[][] s=new String[50][3];
        String[] dept={"ct5","ct7","it5","it7","ece5","ece7","pt5","pt7","mech5","mech7"};
        for(int i=0;i<50;i++)
        {
            s[i][0]=dept[0]+Integer.toString(i+1);
            s[i][1]=dept[2]+Integer.toString(i+1);
            s[i][2]=dept[7]+Integer.toString(i+1);
        }
        System.out.println("Is it working??");
        Assign_Seats as= new Assign_Seats();
        as.AssignAndStore("15-DEC-22",3,s);
        System.out.println("Yes,it does!");

    }
    
}