(require 'projectile-rails)

(add-hook 'projectile-mode-hook 'projectile-rails-on)

(evil-leader/set-key
  "rfa" 'projectile-rails-find-locale
  "rfc" 'projectile-rails-find-controller
  "rfe" 'projectile-rails-find-environment
  "rff" 'projectile-rails-find-feature
  "rfh" 'projectile-rails-find-helper
  "rfi" 'projectile-rails-find-initializer
  "rfj" 'projectile-rails-find-javascript
  "rfl" 'projectile-rails-find-lib
  "rfm" 'projectile-rails-find-model
  "rfn" 'projectile-rails-find-migration
  "rfo" 'projectile-rails-find-log
  "rfp" 'projectile-rails-find-spec
  "rfr" 'projectile-rails-find-rake-task
  "rfs" 'projectile-rails-find-stylesheet
  "rft" 'projectile-rails-find-test
  "rfu" 'projectile-rails-find-fixture
  "rfv" 'projectile-rails-find-view
  "rfy" 'projectile-rails-find-layout
  "rf@" 'projectile-rails-find-mailer
  "rgc" 'projectile-rails-find-current-controller
  "rgd" 'projectile-rails-goto-schema
  "rge" 'projectile-rails-goto-seeds
  "rgh" 'projectile-rails-find-current-helper
  "rgj" 'projectile-rails-find-current-javascript
  "rgg" 'projectile-rails-goto-gemfile
  "rgm" 'projectile-rails-find-current-model
  "rgn" 'projectile-rails-find-current-migration
  "rgp" 'projectile-rails-find-current-spec
  "rgr" 'projectile-rails-goto-routes
  "rgs" 'projectile-rails-find-current-stylesheet
  "rgt" 'projectile-rails-find-current-test
  "rgu" 'projectile-rails-find-current-fixture
  "rgv" 'projectile-rails-find-current-view
  "rgz" 'projectile-rails-goto-spec-helper
  "rg." 'projectile-rails-goto-file-at-point
  "rcc" 'projectile-rails-generate
  "ri" 'projectile-rails-console
  "rr:" 'projectile-rails-rake
  "rxs" 'projectile-rails-server
  "rRx" 'projectile-rails-extract-region
  )

(el-init-provide)
