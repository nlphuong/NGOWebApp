using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace NGOWebApp.Models
{
    [Table("Partner")]
    public class Partner
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [Required]
        public string OrgName { get; set; }
        [Required,DataType(DataType.EmailAddress)]
        public string Email { get; set; }
        [Required]
        public string Phone { get; set; }
        [Required]
        public string Address { get; set; }
        [ForeignKey("CategoryId")]
        public int CategoryId { get; set; }
        public string Logo { get; set; }
        public DateTime? CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }
        public virtual DonateCategory GetDonateCategory { get; set; }
        public virtual IEnumerable<Donate> GetDonates { get; set; }
        public virtual IEnumerable<Programs> GetPrograms { get; set; }
        public virtual IEnumerable<Interested> GetInteresteds { get; set; }
    }
}
