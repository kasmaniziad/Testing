using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DMSClassLibrary.Managers
{
    public class UserManager
    {
        public List<FlatAccessInfo> GetRolesByUser(int userId)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetRolesByUserIdV1]", AppConfManager.ConnectionString))
            {
                adapter.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
                adapter.SelectCommand.Parameters.AddWithValue("@UserId", userId);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return (from row in dt.AsEnumerable()
                        select new FlatAccessInfo
                        {
                            ActionId = row["ActionId"].ToString(),
                            ModuleId = row["ModuleId"].ToString()
                        }).ToList();
            }
        }

        public List<ModuleInfo> GetMenusByUserId(int userId)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetMenusByUserId]", AppConfManager.ConnectionString))
            {
                adapter.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
                adapter.SelectCommand.Parameters.AddWithValue("@UserId", userId);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return (from row in dt.AsEnumerable()
                        select new ModuleInfo
                        {
                            Id = Convert.ToInt32(row["ModuleId"]),
                            Description = Convert.ToString(row["Description"]),
                            Controller = Convert.ToString(row["Controller"]),
                            ParentId = DBNull.Value != row["ParentId"] ? Convert.ToInt32(row["ParentId"]) : (int?) null,
                            Action = Convert.ToString(row["Action"]),
                            Icon = Convert.ToString(row["Icon"]),
                            Prefix = Convert.ToString(row["Prefix"]),
                            OrderId = DBNull.Value != row["OrderId"] ? Convert.ToInt32(row["OrderId"]) : (int?)null,
                            SubOrderId = DBNull.Value != row["SubOrderId"] ? Convert.ToInt32(row["SubOrderId"]) : (int?)null,
                            isVisible = Convert.ToBoolean(row["isVisible"])
                        }).ToList();
            }
        }
        

    }
}
