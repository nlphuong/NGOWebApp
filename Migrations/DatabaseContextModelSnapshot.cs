﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using NGOWebApp.Data;

namespace NGOWebApp.Migrations
{
    [DbContext(typeof(DatabaseContext))]
    partial class DatabaseContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.12")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("NGOWebApp.Models.Account", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Address")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Avatar")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("nvarchar(max)")
                        .HasDefaultValue("images/avatar.jpg");

                    b.Property<DateTime?>("Birthday")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("CreatedAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 141, DateTimeKind.Local).AddTicks(8119));

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("FullName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("GetRoleId")
                        .HasColumnType("int");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Phone")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("RoleId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasDefaultValue(2);

                    b.HasKey("Id");

                    b.HasIndex("GetRoleId");

                    b.ToTable("Account");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Address = "Laos",
                            Birthday = new DateTime(1995, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            Email = "phuongnl@gmail.com",
                            FullName = "Nguyen Linh Phuong",
                            Password = "HashPassMD5",
                            Phone = "0941132369",
                            RoleId = 1
                        },
                        new
                        {
                            Id = 2,
                            Address = "TPHCM",
                            Birthday = new DateTime(1996, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            Email = "sangtrancong171196@gmail.com",
                            FullName = "Tran Cong Sang",
                            Password = "HashPassMD5",
                            Phone = "0946963045",
                            RoleId = 1
                        },
                        new
                        {
                            Id = 3,
                            Address = "TPHCM",
                            Birthday = new DateTime(1996, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            Email = "tien@gmail.com",
                            FullName = "Lai Ngoc Thuy Tien",
                            Password = "HashPassMD5",
                            Phone = "0125963999",
                            RoleId = 1
                        },
                        new
                        {
                            Id = 4,
                            Address = "TPHCM",
                            Birthday = new DateTime(1996, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            Email = "phuc@gmail.com",
                            FullName = "Phung Van Phuc",
                            Password = "HashPassMD5",
                            Phone = "0125963999",
                            RoleId = 1
                        },
                        new
                        {
                            Id = 5,
                            Address = "TPHCM",
                            Birthday = new DateTime(1996, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            Email = "hieu@gmail.com",
                            FullName = "Vu Bui Minh Hieu",
                            Password = "HashPassMD5",
                            Phone = "0125963999",
                            RoleId = 1
                        },
                        new
                        {
                            Id = 6,
                            Address = "TPHCM",
                            Birthday = new DateTime(1996, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            Email = "trancongsang.a1.vd.2014@gmail.com",
                            FullName = "Sang user",
                            Password = "HashPassMD5",
                            Phone = "0125963999",
                            RoleId = 2
                        });
                });

            modelBuilder.Entity("NGOWebApp.Models.ContactUs", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Content")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("CreatedAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 142, DateTimeKind.Local).AddTicks(7516));

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Phone")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("ContactUs");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Content = "good website",
                            Email = "trancongsang.a1.vd.2014@gmail.com",
                            Name = "sang",
                            Phone = "0946963045"
                        },
                        new
                        {
                            Id = 2,
                            Content = "good job",
                            Email = "nam@gmail.com",
                            Name = "nam",
                            Phone = "0946963335"
                        });
                });

            modelBuilder.Entity("NGOWebApp.Models.Donate", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("AccountId")
                        .HasColumnType("int");

                    b.Property<double>("Amount")
                        .HasColumnType("float");

                    b.Property<int>("CategoryId")
                        .HasColumnType("int");

                    b.Property<DateTime?>("CreatedAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 142, DateTimeKind.Local).AddTicks(8272));

                    b.Property<int?>("GetDonateCategoryId")
                        .HasColumnType("int");

                    b.Property<int>("PartnerId")
                        .HasColumnType("int");

                    b.Property<int?>("Status")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasDefaultValue(1);

                    b.HasKey("Id");

                    b.HasIndex("AccountId");

                    b.HasIndex("GetDonateCategoryId");

                    b.HasIndex("PartnerId");

                    b.ToTable("Donate");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            AccountId = 4,
                            Amount = 1000.0,
                            CategoryId = 2,
                            PartnerId = 2
                        },
                        new
                        {
                            Id = 2,
                            AccountId = 3,
                            Amount = 2000.0,
                            CategoryId = 2,
                            PartnerId = 1
                        });
                });

            modelBuilder.Entity("NGOWebApp.Models.DonateCategory", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Photo")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("DonateCategory");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Name = "Care for elderly people",
                            Photo = "images/care-elderly.jpg"
                        },
                        new
                        {
                            Id = 2,
                            Name = "Children Welfare Activity",
                            Photo = "images/ChildrenWelfare.jpg"
                        },
                        new
                        {
                            Id = 3,
                            Name = "Disabled Person",
                            Photo = "images/DisabledPerson.jpg"
                        });
                });

            modelBuilder.Entity("NGOWebApp.Models.Fund", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime?>("CreatedAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(1163));

                    b.Property<double?>("CurrentFund")
                        .HasColumnType("float");

                    b.Property<int?>("DonateId")
                        .HasColumnType("int");

                    b.Property<double?>("Total")
                        .HasColumnType("float");

                    b.HasKey("Id");

                    b.HasIndex("DonateId")
                        .IsUnique()
                        .HasFilter("[DonateId] IS NOT NULL");

                    b.ToTable("Fund");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            CurrentFund = 5000.0,
                            DonateId = 1,
                            Total = 100000.0
                        });
                });

            modelBuilder.Entity("NGOWebApp.Models.Interested", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("AccountId")
                        .HasColumnType("int");

                    b.Property<DateTime?>("CreatedAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(1802));

                    b.Property<int?>("GetProgramsId")
                        .HasColumnType("int");

                    b.Property<int?>("PartnerId")
                        .HasColumnType("int");

                    b.Property<int>("ProgramId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("AccountId");

                    b.HasIndex("GetProgramsId");

                    b.HasIndex("PartnerId");

                    b.ToTable("Interested");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            AccountId = 4,
                            PartnerId = 1,
                            ProgramId = 1
                        });
                });

            modelBuilder.Entity("NGOWebApp.Models.Partner", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Address")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("CategoryId")
                        .HasColumnType("int");

                    b.Property<DateTime?>("CreatedAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(2430));

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("GetDonateCategoryId")
                        .HasColumnType("int");

                    b.Property<string>("Logo")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("OrgName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Phone")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("UpdatedAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(2699));

                    b.HasKey("Id");

                    b.HasIndex("GetDonateCategoryId");

                    b.ToTable("Partner");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Address = "USA",
                            CategoryId = 2,
                            Email = "partner1@gmail.com",
                            Logo = "images/partner.jpg",
                            OrgName = "Partner1",
                            Phone = "0593330772"
                        },
                        new
                        {
                            Id = 2,
                            Address = "HCM, VIet Nam",
                            CategoryId = 2,
                            Email = "partner2@gmail.com",
                            Logo = "images/partner.jpg",
                            OrgName = "Partner2",
                            Phone = "0946963045"
                        });
                });

            modelBuilder.Entity("NGOWebApp.Models.Photos", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime?>("CreatedAt")
                        .HasColumnType("datetime2");

                    b.Property<int?>("GetProgramsId")
                        .HasColumnType("int");

                    b.Property<string>("Photo")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("ProgramId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("GetProgramsId");

                    b.ToTable("Photos");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Photo = "images/AlbumProgram/program1-img1.jpg",
                            ProgramId = 1
                        },
                        new
                        {
                            Id = 2,
                            Photo = "images/AlbumProgram/program1-img2.jpg",
                            ProgramId = 1
                        });
                });

            modelBuilder.Entity("NGOWebApp.Models.Programs", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Content")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("CreatedAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(3892));

                    b.Property<DateTime?>("DeleteAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(4842));

                    b.Property<DateTime?>("Duration")
                        .HasColumnType("datetime2");

                    b.Property<double?>("ExpectedAmount")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("float")
                        .HasDefaultValue(0.0);

                    b.Property<int>("PartnerId")
                        .HasColumnType("int");

                    b.Property<string>("ShortContent")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("Status")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasDefaultValue(1);

                    b.Property<DateTime?>("UpdatedAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(4643));

                    b.HasKey("Id");

                    b.HasIndex("PartnerId");

                    b.ToTable("Programs");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Content = "Together with the Hope Fund, bring a warm and complete Tet to orphans and children in difficult circumstances According to statistics in Vietnam, the pandemic has claimed the lives of more than 19,000 people.Thousands of children suddenly fell into orphans,lost the love,  care and care of their parents and loved ones.There are children whose families are already in trouble.Since being orphaned,both parents are forced to become the breadwinners of their younger siblings.There are also newborn babies who have not enjoyed the warmth of their mothers, and have to struggle with their fathers to make a living in cramped boarding houses.Two children Le Quoc Bao and Le Quoc Dam are just one of thousands of those unlucky cases. The 2022 Tet Gift Giving Project was established by the Hope Foundation from the deep understanding and sympathy for those losses. We are looking forward to sharing some of the burden on the small shoulders of children, bringing a warm and full Tet for their families.",
                            Duration = new DateTime(2022, 1, 8, 11, 14, 16, 164, DateTimeKind.Local).AddTicks(1565),
                            PartnerId = 1,
                            ShortContent = "Let's join hands to fill Tet warmly and completely for orphaned children because of the epidemic"
                        });
                });

            modelBuilder.Entity("NGOWebApp.Models.Query", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("AccountId")
                        .HasColumnType("int");

                    b.Property<string>("Content")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("CreatedAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(7960));

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("UpdatedAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(8245));

                    b.HasKey("Id");

                    b.HasIndex("AccountId");

                    b.ToTable("Query");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            AccountId = 6,
                            Content = "What .......?",
                            CreatedAt = new DateTime(2021, 12, 6, 11, 14, 16, 164, DateTimeKind.Local).AddTicks(9857),
                            Title = "Title"
                        });
                });

            modelBuilder.Entity("NGOWebApp.Models.Reply", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("AccountId")
                        .HasColumnType("int");

                    b.Property<string>("Content")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("CreatedAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(8880));

                    b.Property<int?>("QueryId")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdatedAt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValue(new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(9161));

                    b.HasKey("Id");

                    b.HasIndex("AccountId");

                    b.HasIndex("QueryId");

                    b.ToTable("Reply");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            AccountId = 1,
                            Content = "Answer1",
                            CreatedAt = new DateTime(2021, 12, 8, 11, 9, 16, 165, DateTimeKind.Local).AddTicks(4356),
                            QueryId = 1
                        },
                        new
                        {
                            Id = 2,
                            AccountId = 2,
                            Content = "Answer2",
                            CreatedAt = new DateTime(2021, 12, 8, 11, 4, 16, 165, DateTimeKind.Local).AddTicks(4608),
                            QueryId = 1
                        });
                });

            modelBuilder.Entity("NGOWebApp.Models.Roles", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Role")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.ToTable("Role");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Description = "User",
                            Role = 1
                        },
                        new
                        {
                            Id = 2,
                            Description = "Admin",
                            Role = 2
                        });
                });

            modelBuilder.Entity("NGOWebApp.Models.Account", b =>
                {
                    b.HasOne("NGOWebApp.Models.Roles", "GetRole")
                        .WithMany()
                        .HasForeignKey("GetRoleId");

                    b.Navigation("GetRole");
                });

            modelBuilder.Entity("NGOWebApp.Models.Donate", b =>
                {
                    b.HasOne("NGOWebApp.Models.Account", "GetAccount")
                        .WithMany("GetDonates")
                        .HasForeignKey("AccountId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("NGOWebApp.Models.DonateCategory", "GetDonateCategory")
                        .WithMany("GetDonates")
                        .HasForeignKey("GetDonateCategoryId");

                    b.HasOne("NGOWebApp.Models.Partner", "GetPartner")
                        .WithMany("GetDonates")
                        .HasForeignKey("PartnerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("GetAccount");

                    b.Navigation("GetDonateCategory");

                    b.Navigation("GetPartner");
                });

            modelBuilder.Entity("NGOWebApp.Models.Fund", b =>
                {
                    b.HasOne("NGOWebApp.Models.Donate", "GetDonate")
                        .WithOne("GetFund")
                        .HasForeignKey("NGOWebApp.Models.Fund", "DonateId");

                    b.Navigation("GetDonate");
                });

            modelBuilder.Entity("NGOWebApp.Models.Interested", b =>
                {
                    b.HasOne("NGOWebApp.Models.Account", "GetAccount")
                        .WithMany("GetInteresteds")
                        .HasForeignKey("AccountId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("NGOWebApp.Models.Programs", "GetPrograms")
                        .WithMany("GetInteresteds")
                        .HasForeignKey("GetProgramsId");

                    b.HasOne("NGOWebApp.Models.Partner", "GetPartner")
                        .WithMany("GetInteresteds")
                        .HasForeignKey("PartnerId");

                    b.Navigation("GetAccount");

                    b.Navigation("GetPartner");

                    b.Navigation("GetPrograms");
                });

            modelBuilder.Entity("NGOWebApp.Models.Partner", b =>
                {
                    b.HasOne("NGOWebApp.Models.DonateCategory", "GetDonateCategory")
                        .WithMany("GetPartners")
                        .HasForeignKey("GetDonateCategoryId");

                    b.Navigation("GetDonateCategory");
                });

            modelBuilder.Entity("NGOWebApp.Models.Photos", b =>
                {
                    b.HasOne("NGOWebApp.Models.Programs", "GetPrograms")
                        .WithMany("GetPhotos")
                        .HasForeignKey("GetProgramsId");

                    b.Navigation("GetPrograms");
                });

            modelBuilder.Entity("NGOWebApp.Models.Programs", b =>
                {
                    b.HasOne("NGOWebApp.Models.Partner", "GetPartner")
                        .WithMany("GetPrograms")
                        .HasForeignKey("PartnerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("GetPartner");
                });

            modelBuilder.Entity("NGOWebApp.Models.Query", b =>
                {
                    b.HasOne("NGOWebApp.Models.Account", "GetAccount")
                        .WithMany("GetQueries")
                        .HasForeignKey("AccountId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("GetAccount");
                });

            modelBuilder.Entity("NGOWebApp.Models.Reply", b =>
                {
                    b.HasOne("NGOWebApp.Models.Account", "GetAccount")
                        .WithMany("GetReplies")
                        .HasForeignKey("AccountId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("NGOWebApp.Models.Query", "GetQuery")
                        .WithMany("GetReplies")
                        .HasForeignKey("QueryId");

                    b.Navigation("GetAccount");

                    b.Navigation("GetQuery");
                });

            modelBuilder.Entity("NGOWebApp.Models.Account", b =>
                {
                    b.Navigation("GetDonates");

                    b.Navigation("GetInteresteds");

                    b.Navigation("GetQueries");

                    b.Navigation("GetReplies");
                });

            modelBuilder.Entity("NGOWebApp.Models.Donate", b =>
                {
                    b.Navigation("GetFund");
                });

            modelBuilder.Entity("NGOWebApp.Models.DonateCategory", b =>
                {
                    b.Navigation("GetDonates");

                    b.Navigation("GetPartners");
                });

            modelBuilder.Entity("NGOWebApp.Models.Partner", b =>
                {
                    b.Navigation("GetDonates");

                    b.Navigation("GetInteresteds");

                    b.Navigation("GetPrograms");
                });

            modelBuilder.Entity("NGOWebApp.Models.Programs", b =>
                {
                    b.Navigation("GetInteresteds");

                    b.Navigation("GetPhotos");
                });

            modelBuilder.Entity("NGOWebApp.Models.Query", b =>
                {
                    b.Navigation("GetReplies");
                });
#pragma warning restore 612, 618
        }
    }
}
