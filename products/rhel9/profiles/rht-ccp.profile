documentation_complete: true

title: '[RHEL9 DRAFT] Red Hat Corporate Profile for Certified Cloud Providers (RH CCP)'

description: |-
    This profile contains the minimum security relevant
    configuration settings recommended by Red Hat, Inc for
    Red Hat Enterprise Linux 9 instances deployed by Red Hat Certified
    Cloud Providers.

selections:
    - var_selinux_state=enforcing
    - var_selinux_policy_name=targeted
    - file_owner_logfiles_value=root
    - file_groupowner_logfiles_value=root
    - sshd_idle_timeout_value=5_minutes
    - var_accounts_password_minlen_login_defs=6
    - var_accounts_minimum_age_login_defs=7
    - var_accounts_passwords_pam_faillock_deny=5
    - var_accounts_password_warn_age_login_defs=7
    - var_password_pam_retry=3
    - var_password_pam_dcredit=1
    - var_password_pam_ucredit=2
    - var_password_pam_ocredit=2
    - var_password_pam_lcredit=2
    - var_password_pam_difok=3
    - var_password_pam_unix_remember=5
    - var_accounts_user_umask=077
    - login_banner_text=usgcb_default
    - partition_for_tmp
    - partition_for_var
    - partition_for_var_log
    - partition_for_var_log_audit
    - selinux_state
    - selinux_policytype
    - ensure_redhat_gpgkey_installed
    - security_patches_up_to_date
    - ensure_gpgcheck_globally_activated
    - ensure_gpgcheck_never_disabled
    - package_aide_installed
    - accounts_password_pam_unix_remember
    - no_shelllogin_for_systemaccounts
    - no_empty_passwords
    - accounts_password_all_shadowed
    - accounts_no_uid_except_zero
    - accounts_password_minlen_login_defs
    - accounts_minimum_age_login_defs
    - accounts_password_warn_age_login_defs
    - accounts_password_pam_retry
    - accounts_password_pam_dcredit
    - accounts_password_pam_ucredit
    - accounts_password_pam_ocredit
    - accounts_password_pam_lcredit
    - accounts_password_pam_difok
    - accounts_passwords_pam_faillock_deny
    - set_password_hashing_algorithm_systemauth
#    - set_password_hashing_algorithm_logindefs  # not supported in RHEL9 ATM
#    - set_password_hashing_algorithm_libuserconf  # not supported in RHEL9 ATM
    - require_singleuser_auth
    - file_owner_etc_shadow
    - file_groupowner_etc_shadow
    - file_permissions_etc_shadow
    - file_owner_etc_gshadow
    - file_groupowner_etc_gshadow
    - file_permissions_etc_gshadow
    - file_owner_etc_passwd
    - file_groupowner_etc_passwd
    - file_permissions_etc_passwd
    - file_owner_etc_group
    - file_groupowner_etc_group
    - file_permissions_etc_group
    - file_permissions_library_dirs
    - file_ownership_library_dirs
    - file_permissions_binary_dirs
    - file_ownership_binary_dirs
    - file_permissions_var_log_audit
    - file_owner_grub2_cfg
    - file_groupowner_grub2_cfg
    - file_permissions_grub2_cfg
    - grub2_password
    - kernel_module_dccp_disabled
    - kernel_module_sctp_disabled
    - service_firewalld_enabled
    - set_firewalld_default_zone
#    - firewalld_sshd_port_enabled  # not supported in RHEL9 ATM
    - service_abrtd_disabled
    - service_telnet_disabled
    - package_telnet-server_removed
    - package_telnet_removed
    - sshd_allow_only_protocol2
    - sshd_set_idle_timeout
    - var_sshd_set_keepalive=0
    - disable_host_auth
    - sshd_disable_root_login
    - sshd_disable_empty_passwords
    - sshd_enable_warning_banner
    - sshd_do_not_permit_user_env
    - var_system_crypto_policy=fips
    - configure_crypto_policy
    - configure_ssh_crypto_policy