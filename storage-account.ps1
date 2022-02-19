//To create a storage account
// Please add the resourceGroupName and StorageaccountName

$location="North Europe"
$resourceGroup="learning"
$storageAccountName="jyostorage2022"
$skuName="Standard_LRS"
$storageAccount=New-AzureRmStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName -Location $location -SkuName $skuName

//To create a container
$ctx=$storageAccount.Context
$containerName="demo"
New-AzureStorageContainer -Name $containerName -Context $ctx -Permission blob

//Adding a blob to the storage container
Set-AzureStorageBlobContent -File "cat.jpeg" -Container $containerName -Blob "filename" -Context $ctx