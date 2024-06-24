﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Odr.Repository.Core;

#nullable disable

namespace Odr.Repository.Migrations
{
    [DbContext(typeof(OrderDbContext))]
    partial class OrderDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "8.0.6")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("Odr.Repository.Entities.Order", b =>
                {
                    b.Property<long>("Uid")
                        .HasColumnType("bigint");

                    b.Property<DateTime?>("CreateTime")
                        .IsRequired()
                        .HasColumnType("datetime2")
                        .HasColumnName("CreateTime");

                    b.Property<long>("CustomerUid")
                        .HasColumnType("bigint")
                        .HasColumnName("CustomerUid");

                    b.Property<double>("DeliveryPrice")
                        .HasColumnType("float")
                        .HasColumnName("DeliveryPrice");

                    b.Property<DateTime?>("FinishTime")
                        .HasColumnType("datetime2")
                        .HasColumnName("FinishTime");

                    b.Property<bool>("IsDelete")
                        .HasColumnType("bit")
                        .HasColumnName("IsDelete");

                    b.Property<long?>("RiderUid")
                        .HasColumnType("bigint")
                        .HasColumnName("RiderUid");

                    b.Property<double>("StartPrice")
                        .HasColumnType("float")
                        .HasColumnName("StartPrice");

                    b.Property<int>("Statu")
                        .HasColumnType("int")
                        .HasColumnName("Statu");

                    b.Property<long>("StoreUid")
                        .HasColumnType("bigint")
                        .HasColumnName("StoreUid");

                    b.HasKey("Uid")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.None);

                    b.ToTable("Orders", (string)null);
                });
#pragma warning restore 612, 618
        }
    }
}
