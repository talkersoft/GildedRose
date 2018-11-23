﻿using Autofac;
using GildedRose.Configuration;
using GildedRose.Core.Contracts;
using GildedRose.Membership;
using GildedRose.Store.DependencyManagement;
using System;

namespace GildedRose.Api
{
    public class ServiceConfiguration
    {
        public static ContainerBuilder Register(Action<ContainerBuilder> additionalRegistration, string connectionString)
        {
            var containerBuilder = new ContainerBuilder();
            containerBuilder.RegisterType<ConfigurationStore>().As<IConfigurationStore>().InstancePerLifetimeScope();
            containerBuilder.RegisterType<IdentityHelper>().As<IdentityHelper>().InstancePerLifetimeScope();

            //Register Managers
            containerBuilder.RegisterModule(new Managers.DependencyManagement.ServiceModule());

            // Register Store Module
            containerBuilder.RegisterModule(new StoreModule()
            {
                ConnectionString = connectionString,
            });

            additionalRegistration(containerBuilder);

            return containerBuilder;
        }
    }
}