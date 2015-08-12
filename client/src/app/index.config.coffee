angular.module "adventureQuest"
  .config ($logProvider, toastr, $authProvider) ->
    # Enable log
    $logProvider.debugEnabled true
    # Set options third-party lib
    toastr.options.timeOut = 3000
    toastr.options.positionClass = "toast-top-right"
    toastr.options.preventDuplicates = true
    toastr.options.progressBar = true
    $authProvider.configure
      apiUrl: "/api/v1"
      # tokenValidationPath: "/auth/validate_token"
      # signOutUrl: "/auth/sign_out"
      # emailRegistrationPath: "/auth"
      # accountUpdatePath: "/auth"
      # accountDeletePath: "/auth"
      confirmationSuccessUrl: window.location.href
      # passwordResetPath: "/auth/password"
      # passwordUpdatePath: "/auth/password"
      passwordResetSuccessUrl: window.location.href
      # emailSignInPath: "/auth/sign_in"
      # storage: "localStorage"
      # forceValidateToken: false
      # proxyIf: ->
      #   false
      # proxyUrl: "/proxy"
      # omniauthWindowType: "sameWindow"
      authProviderPaths:
        github: "/auth/github"
        facebook: "/auth/facebook"
        google: "/auth/google"
      # tokenFormat:
      #   "access-token": "{{ token }}"
      #   "token-type": "Bearer"
      #   "client": "{{ clientId }}"
      #   "expiry": "{{ expiry }}"
      #   "uid": "{{ uid }}"
      # parseExpiry: (headers) ->
      #   # convert from UTC ruby (seconds) to UTC js (milliseconds)
      #   parseInt(headers["expiry"]) * 1000 or null
      # handleLoginResponse: (response) ->
      #   console.log "handle login response"
      #   response.data
      # handleAccountResponse: (response) ->
      #   console.log "handle account response"
      #   response.data
      # handleTokenValidationResponse: (response) ->
      #   console.log "handle token validate response"
      #   response.data

