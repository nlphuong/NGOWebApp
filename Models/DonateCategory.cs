using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace NGOWebApp.Models
{
    [Table("DonateCategory")]
    public class DonateCategory
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        public string Photo { get; set; }
        public int Status { get; set; } //1.Active 2.InActive/delete  default:1
        [ForeignKey("CategoryId")]
        public virtual IEnumerable<Partner> GetPartners { get; set; }
        [ForeignKey("CategoryId")]
        public virtual IEnumerable<Donate> GetDonates { get; set; }
    }
}
