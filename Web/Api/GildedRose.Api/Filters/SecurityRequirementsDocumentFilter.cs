﻿using Swashbuckle.AspNetCore.Swagger;
using Swashbuckle.AspNetCore.SwaggerGen;
using System.Collections.Generic;

namespace GildedRose.Api.Filters
{
    public class SecurityRequirementsDocumentFilter : IDocumentFilter
    {
        public void Apply(SwaggerDocument document, DocumentFilterContext context)
        {
            document.Security = new List<IDictionary<string, IEnumerable<string>>>()
            {
                new Dictionary<string, IEnumerable<string>>()
                {
                    { "Bearer", new string[] { } },
                },
            };
        }
    }
}
