define [
	"services/apiRequest"
	], (apiRequest) ->
	PricingService = ($rootScope, $http) ->
		api = apiRequest $http, $rootScope
		return {
			list: (success, error) ->
				api 'plans', success, error

			get: (name, success, error) ->
				api "plans/#{name}", success, error

			unsubscribe: (success, error) ->
				api "plan/unsubscribe", success, error,
					method : 'delete'
		}
	return ["$rootScope", "$http", PricingService]