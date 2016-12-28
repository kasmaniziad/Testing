using DMSClassLibrary.Helpers;
using Microsoft.SqlServer.Types;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DMSClassLibrary.Managers
{
    public class ResourceManager
    {
        /// <summary>
        /// Adds File to Database
        /// </summary>
        /// <param name="info"></param>
        /// <param name="hierarchyId">Folder Directory of user uploading file</param>
        /// <returns></returns>
        public Guid AddResource(ResourceInfo info, string hierarchyId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[AddFileByParentId]", AppConfManager.ConnectionString))
                {
                    info.ResourceId = Guid.NewGuid();
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                    adapter.SelectCommand.Parameters.AddWithValue("@ResourceId", info.ResourceId);
                    var nodeParam = adapter.SelectCommand.Parameters.Add("@UserHierarchyId", SqlDbType.Udt);
                    nodeParam.Value = SqlHierarchyId.Parse(hierarchyId);
                    nodeParam.UdtTypeName = "HierarchyId";

                    adapter.SelectCommand.Parameters.AddWithValue("@FileExtension", info.FileExtension);
                    adapter.SelectCommand.Parameters.AddWithValue("@FileData", info.Data);

                    adapter.SelectCommand.Connection.Open();
                    adapter.SelectCommand.ExecuteNonQuery();
                    adapter.SelectCommand.Connection.Close();
                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToAddFile);
            }

            return info.ResourceId;
        }

        /// <summary>
        /// Get Files By CrId
        /// </summary>
        /// <param name="crId"></param>
        /// <returns></returns>
        public List<ResourceInfo> GetResourceList(long crId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFilesByCrId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@CrId", crId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ResourceInfo
                            {
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString()
                            }).ToList();
                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ResourceInfo> GetResourceList_Log(long crId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFilesByCrId_Log]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@CrId", crId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ResourceInfo
                            {
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString()
                            }).ToList();
                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        /// <summary>
        /// Get Site Visit Resources
        /// </summary>
        /// <param name="siteVisitReportId"></param>
        /// <returns></returns>
        public List<ResourceInfo> GetSiteVisitResourceList(long siteVisitReportId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetSiteVisitReportFilesById]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@SiteVisitReportId", siteVisitReportId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ResourceInfo
                            {
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString()
                            }).ToList();
                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ResourceInfo> GetSiteVisitResourceList_Log(long siteVisitReportId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetSiteVisitReportFilesById_Log]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@SiteVisitReportId", siteVisitReportId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ResourceInfo
                            {
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString()
                            }).ToList();
                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        /// <summary>
        /// Get Files By CrId
        /// </summary>
        /// <param name="contractId"></param>
        /// <returns></returns>
        public List<ContractResourceInfo> GetResourceListByContractId(long contractId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFilesBySiteId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@SiteId", contractId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                DocumentTypeId = row["SiteAttachmentChecklistId"] != DBNull.Value ? Convert.ToInt32(row["SiteAttachmentChecklistId"]) : (int?)null,
                                Category = Convert.ToString(row["Category"]),
                                Remark = Convert.ToString(row["Remarks"]),
                                FileExtension = Convert.ToString(row["FileExtension"]),
                                inEditMode = false
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetResourceListByLvContractId(long lvContractId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFilesByLvContractId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@LvContractId", lvContractId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                DocumentTypeId = row["LvAttachmentChecklistId"] != DBNull.Value ? Convert.ToInt32(row["LvAttachmentChecklistId"]) : (int?)null,
                                Category = Convert.ToString(row["Category"]),
                                Remark = Convert.ToString(row["Remarks"]),
                                FileExtension = Convert.ToString(row["FileExtension"]),
                                inEditMode = false
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetFilesBySiteIdForAccountOpening(long contractId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFilesBySiteIdForAccountOpening]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@SiteId", contractId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                DocumentTypeId = row["SiteAttachmentChecklistId"] != DBNull.Value ? Convert.ToInt32(row["SiteAttachmentChecklistId"]) : (int?)null,
                                Category = Convert.ToString(row["Category"]),
                                Remark = Convert.ToString(row["Remarks"]),
                                FileExtension = Convert.ToString(row["FileExtension"]),
                                inEditMode = false
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetResourceListByJobCardId(long jobCardId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFilesByJobCardId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@JobCardId", jobCardId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                FileExtension = Convert.ToString(row["FileExtension"])
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetResourceListByLvId(long jobCardId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFilesByLvId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@LvId", jobCardId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                FileExtension = Convert.ToString(row["FileExtension"])
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetResourceListByApprovedLvId(long approvedLvId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFilesByApprovedLvId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@LvApprovedContractId", approvedLvId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                FileExtension = Convert.ToString(row["FileExtension"])
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetResourceListByStickerInventoryId(long stickerInventoryId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFilesByStickerInventoryId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@StickerInventoryId", stickerInventoryId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                FileExtension = Convert.ToString(row["FileExtension"]),
                                inEditMode = false
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetResourceListByContractId_Log(long contractId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFilesBySiteId_Log]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@SiteId", contractId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                DocumentType = row["SiteAttachmentChecklist"] != DBNull.Value ? Convert.ToString(row["SiteAttachmentChecklist"]) : String.Empty,
                                Category = Convert.ToString(row["Category"]),
                                Remark = Convert.ToString(row["Remarks"]),
                                FileExtension = Convert.ToString(row["FileExtension"]),
                                inEditMode = false
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetBankGuranteeResources(long contractId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetBankGuranteeFilesBySiteId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@SiteId", contractId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                Remark = Convert.ToString(row["Remarks"]),
                                FileExtension = Convert.ToString(row["FileExtension"]),
                                inEditMode = false
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetBankGuranteeContractResources(long contractId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetBankGuranteeContractFilesBySiteId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@SiteId", contractId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                Remark = Convert.ToString(row["Remarks"]),
                                FileExtension = Convert.ToString(row["FileExtension"]),
                                inEditMode = false
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetTankConfResources(long contractId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetTankConfFilesBySiteId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@SiteId", contractId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                Remark = Convert.ToString(row["Remarks"]),
                                FileExtension = Convert.ToString(row["FileExtension"]),
                                inEditMode = false
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetFinInsConfResources(long contractId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFinalInsConfFilesBySiteId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@SiteId", contractId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                Remark = Convert.ToString(row["Remarks"]),
                                FileExtension = Convert.ToString(row["FileExtension"]),
                                inEditMode = false
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetBankGuranteeFilesByActivityId(long activityId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetBankGuranteeFilesByActivityId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@ActivityId", activityId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                Remark = Convert.ToString(row["Remarks"]),
                                FileExtension = Convert.ToString(row["FileExtension"]),
                                inEditMode = false
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetResourceListByContractIdDocumentTypeId(long contractId, long DocumentTypeId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFilesBySiteIdDocumentTypeId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@SiteId", contractId);
                    adapter.SelectCommand.Parameters.AddWithValue("@DocumentTypeId", DocumentTypeId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                DocumentTypeId = row["DocumentTypeId"] != DBNull.Value ? Convert.ToInt32(row["DocumentTypeId"]) : (int?)null,
                                Category = Convert.ToString(row["Category"]),
                                Remark = Convert.ToString(row["Remarks"]),
                                FileExtension = Convert.ToString(row["FileExtension"]),
                                inEditMode = false
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }

        public List<ContractResourceInfo> GetResourceListByContractIdDocumentTypeId_Log(long contractId, long DocumentTypeId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFilesBySiteIdDocumentTypeId_Log]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@SiteId", contractId);
                    adapter.SelectCommand.Parameters.AddWithValue("@DocumentTypeId", DocumentTypeId);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    return (from row in dt.AsEnumerable()
                            select new ContractResourceInfo
                            {
                                ResourceId = Guid.Parse(row["ResourceId"].ToString()),
                                SystemFileName = row["OriginalFileName"].ToString(),
                                OriginalFileName = row["DownloadFileName"].ToString(),
                                DocumentTypeId = row["DocumentTypeId"] != DBNull.Value ? Convert.ToInt32(row["DocumentTypeId"]) : (int?)null,
                                Category = Convert.ToString(row["Category"]),
                                Remark = Convert.ToString(row["Remarks"]),
                                FileExtension = Convert.ToString(row["FileExtension"]),
                                inEditMode = false
                            }).ToList();

                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(CodeHelper.UnableToGetFiles);
            }
        }
        public ResourceInfo GetResource(string fileName)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFileByStreamId]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@streamId", fileName);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    if (dt != null && dt.Rows.Count > 0)
                        return new ResourceInfo() { Data = (byte[])dt.Rows[0]["FileData"] };

                    throw new Exception(CodeHelper.UnableToGetFiles);
                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(ex.Message);
            }
        }

        public ResourceInfo GetResourceWithFileType(string fileName)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[GetFileByStreamId_V1]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@streamId", fileName);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    if (dt != null && dt.Rows.Count > 0)
                        return new ResourceInfo() { Data = (byte[])dt.Rows[0]["FileData"], FileExtension = dt.Rows[0]["FileExtension"] != null && dt.Rows[0]["FileExtension"] != DBNull.Value ? (string)dt.Rows[0]["FileExtension"] : String.Empty };

                    throw new Exception(CodeHelper.UnableToGetFiles);
                }
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception(ex.Message);
            }
        }

        public string GetFolderName(string folderPath)
        {
            if (!String.IsNullOrEmpty(folderPath))
            {
                var folders = folderPath.Split('.');
                if (folders.Length > 0 && folders[1] != null)
                    return folders[1];
            }

            throw new Exception(CodeHelper.UnableToFindFolder);
        }

        /// <summary>
        /// Delete Resource
        /// </summary>
        /// <param name="hierarchyId"></param>
        /// <returns></returns>
        public bool DeleteResource(Guid? resourceId)
        {
            try
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter("[dbo].[DeleteResource]", AppConfManager.ConnectionString))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                    adapter.SelectCommand.Parameters.AddWithValue("@ResourceId", resourceId);
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
                throw new Exception(CodeHelper.UnableToDeleteResource);
            }

        }

    }

    public class ResourceInfo
    {
        public Guid ResourceId { get; set; }
        public string SystemFileName { get; set; }
        public string OriginalFileName { get; set; }
        public string FileExtension { get; set; }
        public string DataUrl { get; set; }
        public byte[] Data { get; set; }

    }

    public class ContractResourceInfo
    {
        public Guid ResourceId { get; set; }
        public string SystemFileName { get; set; }
        public string OriginalFileName { get; set; }
        public string DocumentType { get; set; }
        public string FileExtension { get; set; }
        public int? DocumentTypeId { get; set; }
        public string Category { get; set; }
        public string Remark { get; set; }
        public bool inEditMode { get; set; }
        public string DataUrl { get; set; }
        public byte[] Data { get; set; }

    }
}
