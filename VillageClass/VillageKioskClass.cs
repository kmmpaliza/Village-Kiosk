using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;


namespace VillageClass
{
    public class VillageKioskClass
    {
        #region Connection String Setup
        DataSet ds = new DataSet();
        static string constring = ValidationConnection.ConnectionString();
        private static SqlConnection conn = new SqlConnection(constring);
        #endregion

        #region Admin
        public void insertAdmin(string name, string username, string designation, string question, string answer, string password)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insertAdmin", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@AdminName", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@AdminUsername", SqlDbType.VarChar).Value = username;
            cmd.Parameters.Add("@AdminDesignation", SqlDbType.VarChar).Value = designation;
            cmd.Parameters.Add("@AdminQuestion", SqlDbType.VarChar).Value = question;
            cmd.Parameters.Add("@AdminAnswer", SqlDbType.VarChar).Value = answer;
            cmd.Parameters.Add("@AdminPassword", SqlDbType.VarChar).Value = password;

            cmd.ExecuteNonQuery();
            conn.Close();


        }
        public bool checkAdmin(string name, string username)
        {
            bool found = false;
            conn.Open();
            SqlCommand readCmd = new SqlCommand("checkAdmin", conn);
            readCmd.CommandType = CommandType.StoredProcedure;
            readCmd.Parameters.Add("@AdminName", SqlDbType.VarChar).Value = name;
            readCmd.Parameters.Add("@AdminUsername", SqlDbType.VarChar).Value = username;
            SqlDataReader dr;
            dr = readCmd.ExecuteReader();
            while (dr.Read())
            {
                found = true;
                break;
            }
            conn.Close();
            return found;
        }

        public DataSet searchCurrentLogin(int id)
        {
            SqlCommand cmd = new SqlCommand("searchCurrentLogin", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@LoginIdInc", SqlDbType.VarChar).Value = id;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "searchCurrentLogin");
            conn.Close();
            return ds;
        }

        public DataSet searchAdmin(string username)
        {
            SqlCommand cmd = new SqlCommand("searchAdmin", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@AdminUsername", SqlDbType.VarChar).Value = username;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "searchAdmin");
            conn.Close();
            return ds;
        }
        #endregion

        #region Login
        string adminname;

        public string Adminname
        {
            get { return adminname; }
            set { adminname = value; }
        }

        public bool CheckUser(string username, string password)
        {
            bool found = false;
            conn.Open();
            SqlCommand readCmd = new SqlCommand("adminLogin", conn);
            readCmd.CommandType = CommandType.StoredProcedure;
            readCmd.Parameters.Add("@AdminUsername", SqlDbType.VarChar).Value = username;
            readCmd.Parameters.Add("@AdminPassword", SqlDbType.VarChar).Value = password;
            SqlDataReader dr;
            dr = readCmd.ExecuteReader();
            while (dr.Read())
            {
                found = true;
                break;
            }
            conn.Close();
            return found;
        }

        public void insertLogin(string name, string timein, string timeout)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insertLogin", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@LoginAdmin", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@LoginTimeIn", SqlDbType.VarChar).Value = timein ?? "";
            cmd.Parameters.Add("@LoginTimeOut", SqlDbType.VarChar).Value = timeout ?? "";

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public void updateLogin(int id, string timeout)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("updateLogin", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@LoginIdInc", SqlDbType.Int).Value = id;
            cmd.Parameters.Add("@LoginTimeOut", SqlDbType.VarChar).Value = timeout;

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public int selectLogin()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("selectLogin", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            int id = Convert.ToInt32(cmd.ExecuteScalar());

            conn.Close();
            return id;
        }

       
        #endregion

        #region Home Owner
        string homeownerId;

        public string HomeownerId
        {
            get { return homeownerId; }
            set { homeownerId = value; }
        }

        public bool CheckHomeOwner(string name, string housenumber, string number)
        {
            bool found = false;
            conn.Open();
            SqlCommand readCmd = new SqlCommand("checkHomeOwner", conn);
            readCmd.CommandType = CommandType.StoredProcedure;
            readCmd.Parameters.Add("@HomeOwnerName", SqlDbType.VarChar).Value = name;
            readCmd.Parameters.Add("@HomeOwnerHouseNumber", SqlDbType.VarChar).Value = housenumber;
            readCmd.Parameters.Add("@HomeOwnerMobileNumber", SqlDbType.VarChar).Value = number;
            SqlDataReader dr;
            dr = readCmd.ExecuteReader();
            while (dr.Read())
            {
                found = true;
                break;
            }
            conn.Close();
            return found;
        }

        public DataSet selectHomeOwner()
        {
            SqlCommand cmd = new SqlCommand("selectHomeOwner", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "selectHomeOwner");
            conn.Close();
            return ds;
        }


        public DataSet getHomeOwner(string id)
        {
            SqlCommand cmd = new SqlCommand("getHomeOwner", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@HomeOwnerId", SqlDbType.VarChar).Value = id;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "getHomeOwner");
            conn.Close();
            return ds;
        }

        public DataSet searchHomeowner(string search)
        {
            SqlCommand cmd = new SqlCommand("searchHomeowner", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@HomeOwnerId", SqlDbType.VarChar).Value = search;
            cmd.Parameters.Add("@HomeOwnerName", SqlDbType.VarChar).Value = search;
            cmd.Parameters.Add("@TenantName", SqlDbType.VarChar).Value = search;
            cmd.Parameters.Add("@HomeOwnerHouseNumber", SqlDbType.VarChar).Value = search;
            cmd.Parameters.Add("@HomeOwnerMobileNumber", SqlDbType.VarChar).Value = search;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "searchHomeowner");
            conn.Close();
            return ds;
        }

        public void SaveHomeOwner(string homeowner_name, string tenant_name, string homeowner_housenumber, string homeowner_mobilenumber)
        {
            
                conn.Open();
                SqlCommand cmd = new SqlCommand("insertHomeOwner", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@HomeOwnerName", SqlDbType.VarChar).Value = homeowner_name ?? "";
                cmd.Parameters.Add("@TenantName", SqlDbType.VarChar).Value = tenant_name ?? "";
                cmd.Parameters.Add("@HomeOwnerHouseNumber", SqlDbType.VarChar).Value = homeowner_housenumber ?? "";
                cmd.Parameters.Add("@HomeOwnerMobileNumber", SqlDbType.VarChar).Value = homeowner_mobilenumber ?? "";

                cmd.ExecuteNonQuery();
                conn.Close();
            
        }

        public void updateHomeOwner(string id, string homeowner_name, string tenant_name, string homeowner_housenumber, string homeowner_mobilenumber)
        {

            conn.Open();
            SqlCommand cmd = new SqlCommand("updateHomeOwner", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@HomeOwnerId", SqlDbType.VarChar).Value = id;
            cmd.Parameters.Add("@HomeOwnerName", SqlDbType.VarChar).Value = homeowner_name ?? "";
            cmd.Parameters.Add("@TenantName", SqlDbType.VarChar).Value = tenant_name ?? "";
            cmd.Parameters.Add("@HomeOwnerHouseNumber", SqlDbType.VarChar).Value = homeowner_housenumber ?? "";
            cmd.Parameters.Add("@HomeOwnerMobileNumber", SqlDbType.VarChar).Value = homeowner_mobilenumber ?? "";

            cmd.ExecuteNonQuery();
            conn.Close();

        }

        public void deleteHomeOwner(string home_id)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("deleteHomeOwner", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@HomeOwnerId", SqlDbType.VarChar).Value = home_id;
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        #endregion

        #region Guest
        string guestId;

        public string GuestId
        {
            get { return guestId; }
            set { guestId = value; }
        }

        public bool checkGuest(string name, string mobile, string housenum)
        {


            bool found = false;
            conn.Open();
            SqlCommand readCmd = new SqlCommand("checkGuest", conn);
            readCmd.CommandType = CommandType.StoredProcedure;
            readCmd.Parameters.Add("@GuestName", SqlDbType.VarChar).Value = name;
            readCmd.Parameters.Add("@GuestMobile", SqlDbType.VarChar).Value = mobile;
            readCmd.Parameters.Add("@GuestHouse", SqlDbType.VarChar).Value = housenum;
            SqlDataReader dr;
            dr = readCmd.ExecuteReader();
            while (dr.Read())
            {
                found = true;
                break;
            }
            conn.Close();
            return found;
        }

        public DataSet selectGuest()
        {
            SqlCommand cmd = new SqlCommand("selectGuest", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "selectGuest");
            conn.Close();
            return ds;
        }

        

        public DataSet getPersonToVisitInfo()
        {
            SqlCommand cmd = new SqlCommand("guestHomeowner", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "guestHomeowner");
            return ds;
        }

        public DataSet getGuest(string id)
        {
            SqlCommand cmd = new SqlCommand("getGuest", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@GuestId", SqlDbType.VarChar).Value = id;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "getGuest");
            conn.Close();
            return ds;
        }

        public DataSet searchGuest(string search)
        {
            SqlCommand cmd = new SqlCommand("searchGuest", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@GuestId", SqlDbType.VarChar).Value = search;
            cmd.Parameters.Add("@GuestName", SqlDbType.VarChar).Value = search;
            cmd.Parameters.Add("@GuestHouse", SqlDbType.VarChar).Value = search;
            cmd.Parameters.Add("@GuestBarangay", SqlDbType.VarChar).Value = search;
            cmd.Parameters.Add("@GuestMuni", SqlDbType.VarChar).Value = search;
            cmd.Parameters.Add("@GuestMobile", SqlDbType.VarChar).Value = search;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "searchGuest");
            conn.Close();
            return ds;
        }


        public void saveGuest(string guest_name, string guest_contact, string housenum, string brgy, string muni, string guest_photo)
        {

            conn.Open();
            SqlCommand cmd = new SqlCommand("insertGuest", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@GuestName", SqlDbType.VarChar).Value = guest_name;
            cmd.Parameters.Add("@GuestMobile", SqlDbType.VarChar).Value = guest_contact;
            cmd.Parameters.Add("@GuestHouse", SqlDbType.VarChar).Value = housenum;
            cmd.Parameters.Add("@GuestBarangay", SqlDbType.VarChar).Value = brgy;
            cmd.Parameters.Add("@GuestMuni", SqlDbType.VarChar).Value = muni;
            cmd.Parameters.Add("@GuestPhoto", SqlDbType.VarChar).Value = guest_photo;

            cmd.ExecuteNonQuery();
            conn.Close();

        }

        public void updateGuest(string id, string guest_name, string guest_contact, string housenum, string brgy, string muni, string guest_photo)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("updateGuest", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@GuestId", SqlDbType.VarChar).Value = id;
            cmd.Parameters.Add("@GuestName", SqlDbType.VarChar).Value = guest_name;
            cmd.Parameters.Add("@GuestMobile", SqlDbType.VarChar).Value = guest_contact;
            cmd.Parameters.Add("@GuestHouse", SqlDbType.VarChar).Value = housenum;
            cmd.Parameters.Add("@GuestBarangay", SqlDbType.VarChar).Value = brgy;
            cmd.Parameters.Add("@GuestMuni", SqlDbType.VarChar).Value = muni;
            cmd.Parameters.Add("@GuestPhoto", SqlDbType.VarChar).Value = guest_photo;

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public void deleteGuest(string id)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("deleteGuest", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@GuestId", SqlDbType.VarChar).Value = id;
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        #endregion

        #region Visitor

        string visitorId;

        public string VisitorId
        {
            get { return visitorId; }
            set { visitorId = value; }
        }

        public DataSet getGuestinfo()
        {
            SqlCommand cmd = new SqlCommand("guestVisitor", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "guestVisitor");
            return ds;
        }

        public DataSet selectVisitor()
        {
            SqlCommand cmd = new SqlCommand("selectVisitor", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "selectVisitor");
            conn.Close();
            return ds;
        }

        public DataSet getVisitor(string id)
        {
            SqlCommand cmd = new SqlCommand("getVisitor", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@VisitorId", SqlDbType.VarChar).Value = id;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "getVisitor");
            conn.Close();
            return ds;
        }

        public DataSet getLogoutVisitor(string time)
        {
            SqlCommand cmd = new SqlCommand("checkLogOutGuest", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@VisitorTimeOut", SqlDbType.VarChar).Value = time;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "checkLogOutGuest");
            conn.Close();
            return ds;
        }

        public bool checkLogoutGuest(string time)
        {
            bool found = false;
            conn.Open();
            SqlCommand readCmd = new SqlCommand("checkLogOutGuest", conn);
            readCmd.CommandType = CommandType.StoredProcedure;
            readCmd.Parameters.Add("@VisitorTimeOut", SqlDbType.VarChar).Value = time;
            SqlDataReader dr;
            dr = readCmd.ExecuteReader();
            while (dr.Read())
            {
                found = true;
                break;
            }
            conn.Close();
            return found;
        }

        public void saveVisitor(string visitor_name, string personvisit, string reason, string mobile,  string timein)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insertVisitor", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@VisitorName", SqlDbType.VarChar).Value = visitor_name;
            cmd.Parameters.Add("@PersonToVisit", SqlDbType.VarChar).Value = personvisit;
            cmd.Parameters.Add("@ReasonOfVisit", SqlDbType.VarChar).Value = reason;
            cmd.Parameters.Add("@HOMobile", SqlDbType.VarChar).Value = mobile;
            cmd.Parameters.Add("@VisitorTimeIn", SqlDbType.VarChar).Value = timein;
            cmd.Parameters.Add("@VisitorTimeOut", SqlDbType.VarChar).Value = "";

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public void updateVisitor(string id, string name, string personvisit, string reason, string mobile, string timein, string timeout)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("updateVisitor", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@VisitorId", SqlDbType.VarChar).Value = id;
            cmd.Parameters.Add("@VisitorName", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@PersonToVisit", SqlDbType.VarChar).Value = personvisit;
            cmd.Parameters.Add("@ReasonOfVisit", SqlDbType.VarChar).Value = reason;
            cmd.Parameters.Add("@HOMobile", SqlDbType.VarChar).Value = mobile;
            cmd.Parameters.Add("@VisitorTimeIn", SqlDbType.VarChar).Value = timein;
            cmd.Parameters.Add("@VisitorTimeOut", SqlDbType.VarChar).Value = timeout;

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        #endregion

        #region Log
        public DataSet selectLogs()
        {
            SqlCommand cmd = new SqlCommand("selectLog", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "selectLog");
            conn.Close();
            return ds;
        }

        public void saveLog(string name, string date, string time, string activity)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insertLog", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@LogName", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@LogDate", SqlDbType.VarChar).Value = date;
            cmd.Parameters.Add("@LogTime", SqlDbType.VarChar).Value = time;
            cmd.Parameters.Add("@LogActivity", SqlDbType.VarChar).Value = activity;

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public DataSet searchLog(string search)
        {
            SqlCommand cmd = new SqlCommand("searchLog", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@LogId", SqlDbType.VarChar).Value = search;
            cmd.Parameters.Add("@LogName", SqlDbType.VarChar).Value = search;
            cmd.Parameters.Add("@LogDate", SqlDbType.VarChar).Value = search;
            cmd.Parameters.Add("@LogTime", SqlDbType.VarChar).Value = search;
            cmd.Parameters.Add("@LogActivity", SqlDbType.VarChar).Value = search;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "searchLog");
            conn.Close();
            return ds;
        }


        #endregion

        #region SentItems

        public DataSet selectSent()
        {
            SqlCommand cmd = new SqlCommand("selectSent", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "selectSent");
            conn.Close();
            return ds;
        }

        public void saveSent(string name, string number, string msg, string time)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insertSent", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@SentName", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@SentNumber", SqlDbType.VarChar).Value = number;
            cmd.Parameters.Add("@SentMsg", SqlDbType.VarChar).Value = msg;
            cmd.Parameters.Add("@SentTime", SqlDbType.VarChar).Value = time;

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public DataSet searchHomePhone(string number)
        {
            SqlCommand cmd = new SqlCommand("searchHomePhone", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@HomeOwnerMobileNumber", SqlDbType.VarChar).Value = number;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds.Clear();
            da.Fill(ds, "searchHomePhone");
            conn.Close();
            return ds;
        }

        #endregion


    }
}
