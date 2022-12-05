#TODO: Fill up the contents below in order to reference your assignment 3 git contents
BME_VERSION = 'b1c996b04c49216c19ebe9c609fd90ea10d92d32'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
BME_SITE = 'https://github.com/swapnilghonge/AESD_swapnil_sricharan_shared'
BME_SITE_METHOD = git
BME_GIT_SUBMODULES = YES

define BME_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/bme all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define BME_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/bme/bme $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
