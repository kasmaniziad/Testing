using ZResource.Helpers;
using Microsoft.SqlServer.Types;
using System;
using System.Data;
using System.Data.SqlClient;

namespace ZResource.Managers
{
    public class DirectoryManager
    {
        /// <summary>
        /// Creates Directory
        /// </summary>
        /// <returns></returns>
        public string CreateDirectory()
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[CreateDirectory]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    if (dt != null && dt.Rows.Count > 0)
                    {
                        var obj = dt.Rows[0][0];
                        if (obj != null)
                            return obj.ToString();
                    }
                    adapter.SelectCommand.Connection.Close();
                }

                throw new Exception(CodeHelper.UnableToCreateDirectory);
            }
            catch (Exception)
            {
                throw new Exception(CodeHelper.UnableToCreateDirectory);
            }

        }

        /// <summary>
        /// Delete Directory
        /// </summary>
        /// <param name="hierarchyId"></param>
        /// <returns></returns>
        public bool DeleteDirectory(string hierarchyId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[DeleteDirectory]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                    var nodeParam = adapter.SelectCommand.Parameters.Add("@PathLocator", SqlDbType.Udt);
                    nodeParam.Value = SqlHierarchyId.Parse(hierarchyId);
                    nodeParam.UdtTypeName = "HierarchyId";

                    adapter.SelectCommand.Connection.Open();

                    int rows_affected = adapter.SelectCommand.ExecuteNonQuery();

                    adapter.SelectCommand.Connection.Close();

                    if (rows_affected > 0)
                        return true;

                    return false;
                }

            }
            catch (Exception)
            {
                throw new Exception(CodeHelper.UnableToDeleteDirectory);
            }

        }
    }
}
