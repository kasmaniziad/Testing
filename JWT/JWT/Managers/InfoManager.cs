using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DMSClassLibrary.Managers
{
    class InfoManager
    {
    }

    public class ModuleInfo
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string Controller { get; set; }
        public string Action { get; set; }
        public string Icon { get; set; }
        public int? ParentId { get; set; }
        public string Prefix { get; set; }
        public bool isVisible { get; set; }
        public int? OrderId { get; set; }
        public int? SubOrderId { get; set; }

        public List<ModuleInfo> lstModules { get; set; }
        public List<ActionInfo> lstActions { get; set; }
    }

    public class ModuleInfoV1
    {
        public string Id { get; set; }
        public string Description { get; set; }
        public string Controller { get; set; }
        public string Action { get; set; }
        public string Icon { get; set; }
        public string Prefix { get; set; }
        public bool isVisible { get; set; }
        public List<ModuleInfo> lstModules { get; set; }
        public List<ActionInfo> lstActions { get; set; }
    }

    public class AccessRightsInfo
    {
        public string ModuleId { get; set; }
        public string Description { get; set; }
        public string Controller { get; set; }
        public string Action { get; set; }
        public string Icon { get; set; }
        public string Prefix { get; set; }
        public bool isVisible { get; set; }
        public int? ParentId { get; set; }
        public int OrderId { get; set; }
        public int SubOrderId { get; set; }
    }

    public class ActionInfo
    {
        public string Description { get; set; }
        public string Controller { get; set; }
        public string Action { get; set; }
    }

    public class FlatAccessInfo
    {
        public string ActionId { get; set; }
        public string ModuleId { get; set; }

    }

    //public class FlatAccessInfoV1
    //{
    //    public string ActionId { get; set; }
    //    public string ModuleId { get; set; }

    //}

    public class TempInfo
    {
        public string Token { get; set; }
        public int Id { get; set; }
    }

    public class AttachmentInfo
    {
        public int? Id { get; set; }
        public long? PId { get; set; }
        public string DocumentAttach { get; set; }
        public bool Selected { get; set; }
        public bool? CanDelete { get; set; }
    }

    public class PdfBankGuranteeInfo
    {
        public string ContractReference { get; set; }
        public string CustomerName { get; set; }
        public string ApplicantName { get; set; }
        public string ProjectName { get; set; }
        public string ProjectLocation { get; set; }
        public string AccountNumber { get; set; }
        public string LesseeName { get; set; }
    }

}
