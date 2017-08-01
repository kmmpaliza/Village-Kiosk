using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace VillageClass
{
    public class ValidationConnection
    {
        public static string ConnectionString()
        {
            return @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Maecea\Desktop\Thesis3\gc\Village Kiosk\App_Data\VillageDB.mdf;Integrated Security=True;User Instance=True";
        }
    }
}
