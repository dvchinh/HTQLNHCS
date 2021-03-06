﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ServiceStack.OrmLite;

namespace ABSoft.Photobookmart.FTPSync.Helper.ORM
{
    public class ABNamingStrategy : INamingStrategy
    {
        public string GetTableName(string name)
        {
            return name.Replace(" ", "_");
        }

        public string GetColumnName(string name)
        {
            return name.Replace(" ", "_");
        }
    }
}