# Cryptos
#
# <h3>Authentication</h3>                     You need to authenticate to use this API.                     To authenticate click on the \"Authorize\" button and do one of the following steps.<br />                     1. Send your API key in the headers of the request by typing \"Bearer my-key\" on the Bearer authorization scheme.<br />                     2. Send your API key on the \"ApiKey\" query string parameter. To do this type your API key in the Query String authorization scheme.<br />                     Both methods are equally valid. We offer both options so that you can use the method that is easier to use in your application.<br />                     <br />                     <h3>API limits</h3>                     Your API key may be subject to daily/hourly limits. To know how much requests you have left look at the following headers in the response.<br />                     1. <strong>x-ratelimit-limit</strong> - The total number of requests that you are allowed to make in a given period (hour/day)                       2. <strong>x-ratelimit-remaining</strong> - The number of remaining requests that you can perform in the current period.<br />                     3. <strong>x-ratelimit-reset</strong> - The number of seconds until the current period resets.<br />                     <br />                     <h3>Suggestions</h3>                     You don't need to implement the whole API by hand in your programming language of choice.<br />                     Since this API has an OpenAPI specification you can use                      <a href=\"https://github.com/swagger-api/swagger-codegen\" target=\"_blank\">Swagger Generator</a>                      to automatically generate client stubs for more than 30 programming languages.                     <br />                     <br />                     You don't have an API key? <a href=\"https://api.equibles.com/pricing\" target=\"_blank\">Get one for free here.</a>
#
# OpenAPI spec version: v1
# Contact: equibles@gmail.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' CryptoCurrencyProfile Class
#'
#' @field logo 
#' @field marketCap 
#' @field circulatingSupply 
#' @field maxSupply 
#' @field description 
#' @field website 
#' @field ticker 
#' @field fullTicker 
#' @field assetType 
#' @field name 
#' @field exchange 
#' @field lastPrice 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CryptoCurrencyProfile <- R6::R6Class(
  'CryptoCurrencyProfile',
  public = list(
    `logo` = NULL,
    `marketCap` = NULL,
    `circulatingSupply` = NULL,
    `maxSupply` = NULL,
    `description` = NULL,
    `website` = NULL,
    `ticker` = NULL,
    `fullTicker` = NULL,
    `assetType` = NULL,
    `name` = NULL,
    `exchange` = NULL,
    `lastPrice` = NULL,
    initialize = function(`logo`, `marketCap`, `circulatingSupply`, `maxSupply`, `description`, `website`, `ticker`, `fullTicker`, `assetType`, `name`, `exchange`, `lastPrice`){
      if (!missing(`logo`)) {
        stopifnot(R6::is.R6(`logo`))
        self$`logo` <- `logo`
      }
      if (!missing(`marketCap`)) {
        stopifnot(is.numeric(`marketCap`), length(`marketCap`) == 1)
        self$`marketCap` <- `marketCap`
      }
      if (!missing(`circulatingSupply`)) {
        stopifnot(is.numeric(`circulatingSupply`), length(`circulatingSupply`) == 1)
        self$`circulatingSupply` <- `circulatingSupply`
      }
      if (!missing(`maxSupply`)) {
        stopifnot(is.numeric(`maxSupply`), length(`maxSupply`) == 1)
        self$`maxSupply` <- `maxSupply`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`website`)) {
        stopifnot(is.character(`website`), length(`website`) == 1)
        self$`website` <- `website`
      }
      if (!missing(`ticker`)) {
        stopifnot(is.character(`ticker`), length(`ticker`) == 1)
        self$`ticker` <- `ticker`
      }
      if (!missing(`fullTicker`)) {
        stopifnot(is.character(`fullTicker`), length(`fullTicker`) == 1)
        self$`fullTicker` <- `fullTicker`
      }
      if (!missing(`assetType`)) {
        stopifnot(R6::is.R6(`assetType`))
        self$`assetType` <- `assetType`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`exchange`)) {
        stopifnot(R6::is.R6(`exchange`))
        self$`exchange` <- `exchange`
      }
      if (!missing(`lastPrice`)) {
        stopifnot(R6::is.R6(`lastPrice`))
        self$`lastPrice` <- `lastPrice`
      }
    },
    toJSON = function() {
      CryptoCurrencyProfileObject <- list()
      if (!is.null(self$`logo`)) {
        CryptoCurrencyProfileObject[['logo']] <- self$`logo`$toJSON()
      }
      if (!is.null(self$`marketCap`)) {
        CryptoCurrencyProfileObject[['marketCap']] <- self$`marketCap`
      }
      if (!is.null(self$`circulatingSupply`)) {
        CryptoCurrencyProfileObject[['circulatingSupply']] <- self$`circulatingSupply`
      }
      if (!is.null(self$`maxSupply`)) {
        CryptoCurrencyProfileObject[['maxSupply']] <- self$`maxSupply`
      }
      if (!is.null(self$`description`)) {
        CryptoCurrencyProfileObject[['description']] <- self$`description`
      }
      if (!is.null(self$`website`)) {
        CryptoCurrencyProfileObject[['website']] <- self$`website`
      }
      if (!is.null(self$`ticker`)) {
        CryptoCurrencyProfileObject[['ticker']] <- self$`ticker`
      }
      if (!is.null(self$`fullTicker`)) {
        CryptoCurrencyProfileObject[['fullTicker']] <- self$`fullTicker`
      }
      if (!is.null(self$`assetType`)) {
        CryptoCurrencyProfileObject[['assetType']] <- self$`assetType`$toJSON()
      }
      if (!is.null(self$`name`)) {
        CryptoCurrencyProfileObject[['name']] <- self$`name`
      }
      if (!is.null(self$`exchange`)) {
        CryptoCurrencyProfileObject[['exchange']] <- self$`exchange`$toJSON()
      }
      if (!is.null(self$`lastPrice`)) {
        CryptoCurrencyProfileObject[['lastPrice']] <- self$`lastPrice`$toJSON()
      }

      CryptoCurrencyProfileObject
    },
    fromJSON = function(CryptoCurrencyProfileJson) {
      CryptoCurrencyProfileObject <- jsonlite::fromJSON(CryptoCurrencyProfileJson)
      if (!is.null(CryptoCurrencyProfileObject$`logo`)) {
        logoObject <- Image$new()
        logoObject$fromJSON(jsonlite::toJSON(CryptoCurrencyProfileObject$logo, auto_unbox = TRUE))
        self$`logo` <- logoObject
      }
      if (!is.null(CryptoCurrencyProfileObject$`marketCap`)) {
        self$`marketCap` <- CryptoCurrencyProfileObject$`marketCap`
      }
      if (!is.null(CryptoCurrencyProfileObject$`circulatingSupply`)) {
        self$`circulatingSupply` <- CryptoCurrencyProfileObject$`circulatingSupply`
      }
      if (!is.null(CryptoCurrencyProfileObject$`maxSupply`)) {
        self$`maxSupply` <- CryptoCurrencyProfileObject$`maxSupply`
      }
      if (!is.null(CryptoCurrencyProfileObject$`description`)) {
        self$`description` <- CryptoCurrencyProfileObject$`description`
      }
      if (!is.null(CryptoCurrencyProfileObject$`website`)) {
        self$`website` <- CryptoCurrencyProfileObject$`website`
      }
      if (!is.null(CryptoCurrencyProfileObject$`ticker`)) {
        self$`ticker` <- CryptoCurrencyProfileObject$`ticker`
      }
      if (!is.null(CryptoCurrencyProfileObject$`fullTicker`)) {
        self$`fullTicker` <- CryptoCurrencyProfileObject$`fullTicker`
      }
      if (!is.null(CryptoCurrencyProfileObject$`assetType`)) {
        assetTypeObject <- AssetType$new()
        assetTypeObject$fromJSON(jsonlite::toJSON(CryptoCurrencyProfileObject$assetType, auto_unbox = TRUE))
        self$`assetType` <- assetTypeObject
      }
      if (!is.null(CryptoCurrencyProfileObject$`name`)) {
        self$`name` <- CryptoCurrencyProfileObject$`name`
      }
      if (!is.null(CryptoCurrencyProfileObject$`exchange`)) {
        exchangeObject <- Exchange$new()
        exchangeObject$fromJSON(jsonlite::toJSON(CryptoCurrencyProfileObject$exchange, auto_unbox = TRUE))
        self$`exchange` <- exchangeObject
      }
      if (!is.null(CryptoCurrencyProfileObject$`lastPrice`)) {
        lastPriceObject <- Price$new()
        lastPriceObject$fromJSON(jsonlite::toJSON(CryptoCurrencyProfileObject$lastPrice, auto_unbox = TRUE))
        self$`lastPrice` <- lastPriceObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "logo": %s,
           "marketCap": %d,
           "circulatingSupply": %d,
           "maxSupply": %d,
           "description": %s,
           "website": %s,
           "ticker": %s,
           "fullTicker": %s,
           "assetType": %s,
           "name": %s,
           "exchange": %s,
           "lastPrice": %s
        }',
        self$`logo`$toJSON(),
        self$`marketCap`,
        self$`circulatingSupply`,
        self$`maxSupply`,
        self$`description`,
        self$`website`,
        self$`ticker`,
        self$`fullTicker`,
        self$`assetType`$toJSON(),
        self$`name`,
        self$`exchange`$toJSON(),
        self$`lastPrice`$toJSON()
      )
    },
    fromJSONString = function(CryptoCurrencyProfileJson) {
      CryptoCurrencyProfileObject <- jsonlite::fromJSON(CryptoCurrencyProfileJson)
      ImageObject <- Image$new()
      self$`logo` <- ImageObject$fromJSON(jsonlite::toJSON(CryptoCurrencyProfileObject$logo, auto_unbox = TRUE))
      self$`marketCap` <- CryptoCurrencyProfileObject$`marketCap`
      self$`circulatingSupply` <- CryptoCurrencyProfileObject$`circulatingSupply`
      self$`maxSupply` <- CryptoCurrencyProfileObject$`maxSupply`
      self$`description` <- CryptoCurrencyProfileObject$`description`
      self$`website` <- CryptoCurrencyProfileObject$`website`
      self$`ticker` <- CryptoCurrencyProfileObject$`ticker`
      self$`fullTicker` <- CryptoCurrencyProfileObject$`fullTicker`
      AssetTypeObject <- AssetType$new()
      self$`assetType` <- AssetTypeObject$fromJSON(jsonlite::toJSON(CryptoCurrencyProfileObject$assetType, auto_unbox = TRUE))
      self$`name` <- CryptoCurrencyProfileObject$`name`
      ExchangeObject <- Exchange$new()
      self$`exchange` <- ExchangeObject$fromJSON(jsonlite::toJSON(CryptoCurrencyProfileObject$exchange, auto_unbox = TRUE))
      PriceObject <- Price$new()
      self$`lastPrice` <- PriceObject$fromJSON(jsonlite::toJSON(CryptoCurrencyProfileObject$lastPrice, auto_unbox = TRUE))
    }
  )
)
