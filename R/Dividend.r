# Stocks
#
# <h3>Authentication</h3>                     You need to authenticate to use this API.                     To authenticate click on the \"Authorize\" button and do one of the following steps.<br />                     1. Send your API key in the headers of the request by typing \"Bearer my-key\" on the Bearer authorization scheme.<br />                     2. Send your API key on the \"ApiKey\" query string parameter. To do this type your API key in the Query String authorization scheme.<br />                     Both methods are equally valid. We offer both options so that you can use the method that is easier to use in your application.<br />                     <br />                     <h3>API limits</h3>                     Your API key may be subject to daily/hourly limits. To know how much requests you have left look at the following headers in the response.<br />                     1. <strong>x-ratelimit-limit</strong> - The total number of requests that you are allowed to make in a given period (hour/day)                       2. <strong>x-ratelimit-remaining</strong> - The number of remaining requests that you can perform in the current period.<br />                     3. <strong>x-ratelimit-reset</strong> - The number of seconds until the current period resets.<br />                     <br />                     <h3>Suggestions</h3>                     You don't need to implement the whole API by hand in your programming language of choice.<br />                     Since this API has an OpenAPI specification you can use                      <a href=\"https://github.com/swagger-api/swagger-codegen\" target=\"_blank\">Swagger Generator</a>                      to automatically generate client stubs for more than 30 programming languages.                     <br />                     <br />                     You don't have an API key? <a href=\"https://www.equibles.com/api/pricing\" target=\"_blank\">Get one for free here.</a>
#
# OpenAPI spec version: v1
# Contact: equibles@gmail.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' Dividend Class
#'
#' @field amount 
#' @field exDate 
#' @field paymentDate 
#' @field recordDate 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Dividend <- R6::R6Class(
  'Dividend',
  public = list(
    `amount` = NULL,
    `exDate` = NULL,
    `paymentDate` = NULL,
    `recordDate` = NULL,
    initialize = function(`amount`, `exDate`, `paymentDate`, `recordDate`){
      if (!missing(`amount`)) {
        stopifnot(is.numeric(`amount`), length(`amount`) == 1)
        self$`amount` <- `amount`
      }
      if (!missing(`exDate`)) {
        stopifnot(is.character(`exDate`), length(`exDate`) == 1)
        self$`exDate` <- `exDate`
      }
      if (!missing(`paymentDate`)) {
        stopifnot(is.character(`paymentDate`), length(`paymentDate`) == 1)
        self$`paymentDate` <- `paymentDate`
      }
      if (!missing(`recordDate`)) {
        stopifnot(is.character(`recordDate`), length(`recordDate`) == 1)
        self$`recordDate` <- `recordDate`
      }
    },
    toJSON = function() {
      DividendObject <- list()
      if (!is.null(self$`amount`)) {
        DividendObject[['amount']] <- self$`amount`
      }
      if (!is.null(self$`exDate`)) {
        DividendObject[['exDate']] <- self$`exDate`
      }
      if (!is.null(self$`paymentDate`)) {
        DividendObject[['paymentDate']] <- self$`paymentDate`
      }
      if (!is.null(self$`recordDate`)) {
        DividendObject[['recordDate']] <- self$`recordDate`
      }

      DividendObject
    },
    fromJSON = function(DividendJson) {
      DividendObject <- jsonlite::fromJSON(DividendJson)
      if (!is.null(DividendObject$`amount`)) {
        self$`amount` <- DividendObject$`amount`
      }
      if (!is.null(DividendObject$`exDate`)) {
        self$`exDate` <- DividendObject$`exDate`
      }
      if (!is.null(DividendObject$`paymentDate`)) {
        self$`paymentDate` <- DividendObject$`paymentDate`
      }
      if (!is.null(DividendObject$`recordDate`)) {
        self$`recordDate` <- DividendObject$`recordDate`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "amount": %d,
           "exDate": %s,
           "paymentDate": %s,
           "recordDate": %s
        }',
        self$`amount`,
        self$`exDate`,
        self$`paymentDate`,
        self$`recordDate`
      )
    },
    fromJSONString = function(DividendJson) {
      DividendObject <- jsonlite::fromJSON(DividendJson)
      self$`amount` <- DividendObject$`amount`
      self$`exDate` <- DividendObject$`exDate`
      self$`paymentDate` <- DividendObject$`paymentDate`
      self$`recordDate` <- DividendObject$`recordDate`
    }
  )
)
