﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Configuration;


public class Database
{
    public static string ConnectionString
    {
        get
        {
            return WebConfigurationManager.ConnectionStrings["SalonDbConnectionString"].ConnectionString;
        }
    }
}