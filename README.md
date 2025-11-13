# tarot_api.cr
Web-API for [tarotapi.dev](https://tarotapi.dev/) REST API for card names, descriptions, and divinatory meanings according to AE Waite's Pictorial Key to the Tarot (1910)

## Example
```cr
require "./tarot_api"

tarot_api = TarotApi.new
cards = tarot_api.get_random_cards()
puts cards
```
