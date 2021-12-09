using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace NGOWebApp.Migrations
{
    public partial class Test1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ContactUs",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Phone = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Content = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 142, DateTimeKind.Local).AddTicks(7516))
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContactUs", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "DonateCategory",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Photo = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DonateCategory", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Role",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Role = table.Column<int>(type: "int", nullable: false),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Role", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Partner",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OrgName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Phone = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Address = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CategoryId = table.Column<int>(type: "int", nullable: false),
                    Logo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(2430)),
                    UpdatedAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(2699)),
                    GetDonateCategoryId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Partner", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Partner_DonateCategory_GetDonateCategoryId",
                        column: x => x.GetDonateCategoryId,
                        principalTable: "DonateCategory",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Account",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FullName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Password = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Phone = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Address = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Birthday = table.Column<DateTime>(type: "datetime2", nullable: true),
                    Avatar = table.Column<string>(type: "nvarchar(max)", nullable: true, defaultValue: "images/avatar.jpg"),
                    RoleId = table.Column<int>(type: "int", nullable: false, defaultValue: 2),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 141, DateTimeKind.Local).AddTicks(8119)),
                    GetRoleId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Account", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Account_Role_GetRoleId",
                        column: x => x.GetRoleId,
                        principalTable: "Role",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Programs",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ShortContent = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Content = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ExpectedAmount = table.Column<double>(type: "float", nullable: true, defaultValue: 0.0),
                    PartnerId = table.Column<int>(type: "int", nullable: false),
                    Duration = table.Column<DateTime>(type: "datetime2", nullable: true),
                    Status = table.Column<int>(type: "int", nullable: true, defaultValue: 1),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(3892)),
                    UpdatedAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(4643)),
                    DeleteAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(4842))
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Programs", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Programs_Partner_PartnerId",
                        column: x => x.PartnerId,
                        principalTable: "Partner",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Donate",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    AccountId = table.Column<int>(type: "int", nullable: false),
                    CategoryId = table.Column<int>(type: "int", nullable: false),
                    PartnerId = table.Column<int>(type: "int", nullable: false),
                    Amount = table.Column<double>(type: "float", nullable: false),
                    Status = table.Column<int>(type: "int", nullable: true, defaultValue: 1),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 142, DateTimeKind.Local).AddTicks(8272)),
                    GetDonateCategoryId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Donate", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Donate_Account_AccountId",
                        column: x => x.AccountId,
                        principalTable: "Account",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Donate_DonateCategory_GetDonateCategoryId",
                        column: x => x.GetDonateCategoryId,
                        principalTable: "DonateCategory",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Donate_Partner_PartnerId",
                        column: x => x.PartnerId,
                        principalTable: "Partner",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Query",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Title = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Content = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    AccountId = table.Column<int>(type: "int", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(7960)),
                    UpdatedAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(8245))
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Query", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Query_Account_AccountId",
                        column: x => x.AccountId,
                        principalTable: "Account",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Interested",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    AccountId = table.Column<int>(type: "int", nullable: false),
                    ProgramId = table.Column<int>(type: "int", nullable: false),
                    PartnerId = table.Column<int>(type: "int", nullable: true),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(1802)),
                    GetProgramsId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Interested", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Interested_Account_AccountId",
                        column: x => x.AccountId,
                        principalTable: "Account",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Interested_Partner_PartnerId",
                        column: x => x.PartnerId,
                        principalTable: "Partner",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Interested_Programs_GetProgramsId",
                        column: x => x.GetProgramsId,
                        principalTable: "Programs",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Photos",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Photo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ProgramId = table.Column<int>(type: "int", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    GetProgramsId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Photos", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Photos_Programs_GetProgramsId",
                        column: x => x.GetProgramsId,
                        principalTable: "Programs",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Fund",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Total = table.Column<double>(type: "float", nullable: true),
                    CurrentFund = table.Column<double>(type: "float", nullable: true),
                    DonateId = table.Column<int>(type: "int", nullable: true),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(1163))
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Fund", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Fund_Donate_DonateId",
                        column: x => x.DonateId,
                        principalTable: "Donate",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Reply",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    AccountId = table.Column<int>(type: "int", nullable: false),
                    Content = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    QueryId = table.Column<int>(type: "int", nullable: true),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(8880)),
                    UpdatedAt = table.Column<DateTime>(type: "datetime2", nullable: true, defaultValue: new DateTime(2021, 12, 9, 11, 14, 16, 143, DateTimeKind.Local).AddTicks(9161))
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Reply", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Reply_Account_AccountId",
                        column: x => x.AccountId,
                        principalTable: "Account",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Reply_Query_QueryId",
                        column: x => x.QueryId,
                        principalTable: "Query",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.InsertData(
                table: "Account",
                columns: new[] { "Id", "Address", "Birthday", "Email", "FullName", "GetRoleId", "Password", "Phone", "RoleId" },
                values: new object[,]
                {
                    { 1, "Laos", new DateTime(1995, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), "phuongnl@gmail.com", "Nguyen Linh Phuong", null, "HashPassMD5", "0941132369", 1 },
                    { 2, "TPHCM", new DateTime(1996, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), "sangtrancong171196@gmail.com", "Tran Cong Sang", null, "HashPassMD5", "0946963045", 1 },
                    { 3, "TPHCM", new DateTime(1996, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), "tien@gmail.com", "Lai Ngoc Thuy Tien", null, "HashPassMD5", "0125963999", 1 },
                    { 4, "TPHCM", new DateTime(1996, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), "phuc@gmail.com", "Phung Van Phuc", null, "HashPassMD5", "0125963999", 1 },
                    { 5, "TPHCM", new DateTime(1996, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), "hieu@gmail.com", "Vu Bui Minh Hieu", null, "HashPassMD5", "0125963999", 1 },
                    { 6, "TPHCM", new DateTime(1996, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), "trancongsang.a1.vd.2014@gmail.com", "Sang user", null, "HashPassMD5", "0125963999", 2 }
                });

            migrationBuilder.InsertData(
                table: "ContactUs",
                columns: new[] { "Id", "Content", "Email", "Name", "Phone" },
                values: new object[,]
                {
                    { 1, "good website", "trancongsang.a1.vd.2014@gmail.com", "sang", "0946963045" },
                    { 2, "good job", "nam@gmail.com", "nam", "0946963335" }
                });

            migrationBuilder.InsertData(
                table: "DonateCategory",
                columns: new[] { "Id", "Name", "Photo" },
                values: new object[,]
                {
                    { 3, "Disabled Person", "images/DisabledPerson.jpg" },
                    { 1, "Care for elderly people", "images/care-elderly.jpg" },
                    { 2, "Children Welfare Activity", "images/ChildrenWelfare.jpg" }
                });

            migrationBuilder.InsertData(
                table: "Partner",
                columns: new[] { "Id", "Address", "CategoryId", "Email", "GetDonateCategoryId", "Logo", "OrgName", "Phone" },
                values: new object[,]
                {
                    { 1, "USA", 2, "partner1@gmail.com", null, "images/partner.jpg", "Partner1", "0593330772" },
                    { 2, "HCM, VIet Nam", 2, "partner2@gmail.com", null, "images/partner.jpg", "Partner2", "0946963045" }
                });

            migrationBuilder.InsertData(
                table: "Photos",
                columns: new[] { "Id", "CreatedAt", "GetProgramsId", "Photo", "ProgramId" },
                values: new object[,]
                {
                    { 1, null, null, "images/AlbumProgram/program1-img1.jpg", 1 },
                    { 2, null, null, "images/AlbumProgram/program1-img2.jpg", 1 }
                });

            migrationBuilder.InsertData(
                table: "Role",
                columns: new[] { "Id", "Description", "Role" },
                values: new object[,]
                {
                    { 1, "User", 1 },
                    { 2, "Admin", 2 }
                });

            migrationBuilder.InsertData(
                table: "Donate",
                columns: new[] { "Id", "AccountId", "Amount", "CategoryId", "GetDonateCategoryId", "PartnerId" },
                values: new object[,]
                {
                    { 2, 3, 2000.0, 2, null, 1 },
                    { 1, 4, 1000.0, 2, null, 2 }
                });

            migrationBuilder.InsertData(
                table: "Interested",
                columns: new[] { "Id", "AccountId", "GetProgramsId", "PartnerId", "ProgramId" },
                values: new object[] { 1, 4, null, 1, 1 });

            migrationBuilder.InsertData(
                table: "Programs",
                columns: new[] { "Id", "Content", "Duration", "PartnerId", "ShortContent" },
                values: new object[] { 1, "Together with the Hope Fund, bring a warm and complete Tet to orphans and children in difficult circumstances According to statistics in Vietnam, the pandemic has claimed the lives of more than 19,000 people.Thousands of children suddenly fell into orphans,lost the love,  care and care of their parents and loved ones.There are children whose families are already in trouble.Since being orphaned,both parents are forced to become the breadwinners of their younger siblings.There are also newborn babies who have not enjoyed the warmth of their mothers, and have to struggle with their fathers to make a living in cramped boarding houses.Two children Le Quoc Bao and Le Quoc Dam are just one of thousands of those unlucky cases. The 2022 Tet Gift Giving Project was established by the Hope Foundation from the deep understanding and sympathy for those losses. We are looking forward to sharing some of the burden on the small shoulders of children, bringing a warm and full Tet for their families.", new DateTime(2022, 1, 8, 11, 14, 16, 164, DateTimeKind.Local).AddTicks(1565), 1, "Let's join hands to fill Tet warmly and completely for orphaned children because of the epidemic" });

            migrationBuilder.InsertData(
                table: "Query",
                columns: new[] { "Id", "AccountId", "Content", "CreatedAt", "Title" },
                values: new object[] { 1, 6, "What .......?", new DateTime(2021, 12, 6, 11, 14, 16, 164, DateTimeKind.Local).AddTicks(9857), "Title" });

            migrationBuilder.InsertData(
                table: "Fund",
                columns: new[] { "Id", "CurrentFund", "DonateId", "Total" },
                values: new object[] { 1, 5000.0, 1, 100000.0 });

            migrationBuilder.InsertData(
                table: "Reply",
                columns: new[] { "Id", "AccountId", "Content", "CreatedAt", "QueryId" },
                values: new object[] { 2, 2, "Answer2", new DateTime(2021, 12, 8, 11, 4, 16, 165, DateTimeKind.Local).AddTicks(4608), 1 });

            migrationBuilder.InsertData(
                table: "Reply",
                columns: new[] { "Id", "AccountId", "Content", "CreatedAt", "QueryId" },
                values: new object[] { 1, 1, "Answer1", new DateTime(2021, 12, 8, 11, 9, 16, 165, DateTimeKind.Local).AddTicks(4356), 1 });

            migrationBuilder.CreateIndex(
                name: "IX_Account_GetRoleId",
                table: "Account",
                column: "GetRoleId");

            migrationBuilder.CreateIndex(
                name: "IX_Donate_AccountId",
                table: "Donate",
                column: "AccountId");

            migrationBuilder.CreateIndex(
                name: "IX_Donate_GetDonateCategoryId",
                table: "Donate",
                column: "GetDonateCategoryId");

            migrationBuilder.CreateIndex(
                name: "IX_Donate_PartnerId",
                table: "Donate",
                column: "PartnerId");

            migrationBuilder.CreateIndex(
                name: "IX_Fund_DonateId",
                table: "Fund",
                column: "DonateId",
                unique: true,
                filter: "[DonateId] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_Interested_AccountId",
                table: "Interested",
                column: "AccountId");

            migrationBuilder.CreateIndex(
                name: "IX_Interested_GetProgramsId",
                table: "Interested",
                column: "GetProgramsId");

            migrationBuilder.CreateIndex(
                name: "IX_Interested_PartnerId",
                table: "Interested",
                column: "PartnerId");

            migrationBuilder.CreateIndex(
                name: "IX_Partner_GetDonateCategoryId",
                table: "Partner",
                column: "GetDonateCategoryId");

            migrationBuilder.CreateIndex(
                name: "IX_Photos_GetProgramsId",
                table: "Photos",
                column: "GetProgramsId");

            migrationBuilder.CreateIndex(
                name: "IX_Programs_PartnerId",
                table: "Programs",
                column: "PartnerId");

            migrationBuilder.CreateIndex(
                name: "IX_Query_AccountId",
                table: "Query",
                column: "AccountId");

            migrationBuilder.CreateIndex(
                name: "IX_Reply_AccountId",
                table: "Reply",
                column: "AccountId");

            migrationBuilder.CreateIndex(
                name: "IX_Reply_QueryId",
                table: "Reply",
                column: "QueryId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ContactUs");

            migrationBuilder.DropTable(
                name: "Fund");

            migrationBuilder.DropTable(
                name: "Interested");

            migrationBuilder.DropTable(
                name: "Photos");

            migrationBuilder.DropTable(
                name: "Reply");

            migrationBuilder.DropTable(
                name: "Donate");

            migrationBuilder.DropTable(
                name: "Programs");

            migrationBuilder.DropTable(
                name: "Query");

            migrationBuilder.DropTable(
                name: "Partner");

            migrationBuilder.DropTable(
                name: "Account");

            migrationBuilder.DropTable(
                name: "DonateCategory");

            migrationBuilder.DropTable(
                name: "Role");
        }
    }
}
