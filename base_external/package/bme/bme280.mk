#TODO: Fill up the contents below in order to reference your assignment 3 git contents
BME280_VERSION = '0a6073d8ffb5ca37fc5a23bdc4f43da824a69a91'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
BME280_SITE = 'https://github.com/swapnilghonge/AESD_swapnil_sricharan_shared'
BME280_SITE_METHOD = git
BME280_GIT_SUBMODULES = YES

define BME280_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/bme all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define BME280_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/bme/bme $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
