resource "azurerm_network_interface" "test" {
  name                = "my_vm_if"
  location            = var.location
  resource_group_name = var.resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.public_ip
  }
}
# Create (and display) an SSH key
#resource "tls_private_key" "example_ssh" {
#  algorithm = "RSA"
# rsa_bits = 4096
#}
#output "tls_private_key" { value = tls_private_key.example_ssh.private_key_pem }

resource "azurerm_linux_virtual_machine" "test" {
  name                = "my-vm"
  location            = var.location
  resource_group_name = var.resource_group
  size                = "Standard_B1s"
  admin_username      = "bamuse"
  admin_password      = "1234QWer"
  disable_password_authentication =false
  network_interface_ids = [azurerm_network_interface.test.id]
  tags = {
    Name = "vm1"
  }

  #admin_ssh_key {
  #    username       = "bamuse"
  #    public_key = file("~/.ssh/mykey.pub")
  #    public_key     = tls_private_key.example_ssh.public_key_openssh
  #}


  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}
