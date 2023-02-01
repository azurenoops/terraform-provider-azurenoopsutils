package azurenoopsutils

import (
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
)

// Provider -
func Provider() *schema.Provider {
	return &schema.Provider{
		Schema: map[string]*schema.Schema{},
		
		ResourcesMap: map[string]*schema.Resource{
			"azurenoopsutils_resource_name": resourceName(),
		},
		DataSourcesMap: map[string]*schema.Resource{
			"azurenoopsutils_environment_variable": dataEnvironmentVariable(),
			"azurenoopsutils_resource_name":        dataName(),
		},
	}
}
