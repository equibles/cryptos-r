# Stocks
#
# <h3>Authentication</h3>                     You need to authenticate to use this API.                     To authenticate click on the \"Authorize\" button and do one of the following steps.<br />                     1. Send your API key in the headers of the request by typing \"Bearer my-key\" on the Bearer authorization scheme.<br />                     2. Send your API key on the \"ApiKey\" query string parameter. To do this type your API key in the Query String authorization scheme.<br />                     Both methods are equally valid. We offer both options so that you can use the method that is easier to use in your application.<br />                     <br />                     <h3>API limits</h3>                     Your API key may be subject to daily/hourly limits. To know how much requests you have left look at the following headers in the response.<br />                     1. <strong>x-ratelimit-limit</strong> - The total number of requests that you are allowed to make in a given period (hour/day)                       2. <strong>x-ratelimit-remaining</strong> - The number of remaining requests that you can perform in the current period.<br />                     3. <strong>x-ratelimit-reset</strong> - The number of seconds until the current period resets.<br />                     <br />                     <h3>Suggestions</h3>                     You don't need to implement the whole API by hand in your programming language of choice.<br />                     Since this API has an OpenAPI specification you can use                      <a href=\"https://github.com/swagger-api/swagger-codegen\" target=\"_blank\">Swagger Generator</a>                      to automatically generate client stubs for more than 30 programming languages.                     <br />                     <br />                     You don't have an API key? <a href=\"https://www.equibles.com/api/pricing\" target=\"_blank\">Get one for free here.</a>
#
# OpenAPI spec version: v1
# Contact: equibles@gmail.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' CurrenciesResponse Class
#'
#' @field status 
#' @field errorMessage 
#' @field results 
#' @field count 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurrenciesResponse <- R6::R6Class(
  'CurrenciesResponse',
  public = list(
    `status` = NULL,
    `errorMessage` = NULL,
    `results` = NULL,
    `count` = NULL,
    initialize = function(`status`, `errorMessage`, `results`, `count`){
      if (!missing(`status`)) {
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`errorMessage`)) {
        stopifnot(is.character(`errorMessage`), length(`errorMessage`) == 1)
        self$`errorMessage` <- `errorMessage`
      }
      if (!missing(`results`)) {
        stopifnot(is.list(`results`), length(`results`) != 0)
        lapply(`results`, function(x) stopifnot(R6::is.R6(x)))
        self$`results` <- `results`
      }
      if (!missing(`count`)) {
        stopifnot(is.numeric(`count`), length(`count`) == 1)
        self$`count` <- `count`
      }
    },
    toJSON = function() {
      CurrenciesResponseObject <- list()
      if (!is.null(self$`status`)) {
        CurrenciesResponseObject[['status']] <- self$`status`$toJSON()
      }
      if (!is.null(self$`errorMessage`)) {
        CurrenciesResponseObject[['errorMessage']] <- self$`errorMessage`
      }
      if (!is.null(self$`results`)) {
        CurrenciesResponseObject[['results']] <- lapply(self$`results`, function(x) x$toJSON())
      }
      if (!is.null(self$`count`)) {
        CurrenciesResponseObject[['count']] <- self$`count`
      }

      CurrenciesResponseObject
    },
    fromJSON = function(CurrenciesResponseJson) {
      CurrenciesResponseObject <- jsonlite::fromJSON(CurrenciesResponseJson)
      if (!is.null(CurrenciesResponseObject$`status`)) {
        statusObject <- ResponseStatus$new()
        statusObject$fromJSON(jsonlite::toJSON(CurrenciesResponseObject$status, auto_unbox = TRUE))
        self$`status` <- statusObject
      }
      if (!is.null(CurrenciesResponseObject$`errorMessage`)) {
        self$`errorMessage` <- CurrenciesResponseObject$`errorMessage`
      }
      if (!is.null(CurrenciesResponseObject$`results`)) {
        self$`results` <- lapply(CurrenciesResponseObject$`results`, function(x) {
          resultsObject <- Currency$new()
          resultsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          resultsObject
        })
      }
      if (!is.null(CurrenciesResponseObject$`count`)) {
        self$`count` <- CurrenciesResponseObject$`count`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "status": %s,
           "errorMessage": %s,
           "results": [%s],
           "count": %d
        }',
        self$`status`$toJSON(),
        self$`errorMessage`,
        lapply(self$`results`, function(x) paste(x$toJSON(), sep=",")),
        self$`count`
      )
    },
    fromJSONString = function(CurrenciesResponseJson) {
      CurrenciesResponseObject <- jsonlite::fromJSON(CurrenciesResponseJson)
      ResponseStatusObject <- ResponseStatus$new()
      self$`status` <- ResponseStatusObject$fromJSON(jsonlite::toJSON(CurrenciesResponseObject$status, auto_unbox = TRUE))
      self$`errorMessage` <- CurrenciesResponseObject$`errorMessage`
      self$`results` <- lapply(CurrenciesResponseObject$`results`, function(x) Currency$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`count` <- CurrenciesResponseObject$`count`
    }
  )
)
