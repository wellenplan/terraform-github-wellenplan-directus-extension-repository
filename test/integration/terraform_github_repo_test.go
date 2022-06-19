package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	test_structure "github.com/gruntwork-io/terratest/modules/test-structure"
	"github.com/stretchr/testify/assert"
)

func TestTerraformGitHubRepo(t *testing.T) {
	t.Parallel()

	exampleFolder := test_structure.CopyTerraformFolderToTemp(t, "../..", "test")

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: exampleFolder,
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	htmlURL := terraform.Output(t, terraformOptions, "html_url")
	assert.Equal(t, "https://github.com/wellenplan/directus-extension-test", htmlURL)

	branches := terraform.OutputListOfObjects(t, terraformOptions, "branches")
	assert.Equal(t,
		[]map[string]interface{}([]map[string]interface{}{{"name": "main", "protected": false}}),
		branches)
}
