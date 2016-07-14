Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '6fa367e00d00024c1387', '6ab23b5bd1697c5bcdc0622993d66a092f527302'
end
