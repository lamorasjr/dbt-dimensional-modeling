select
    creditcardid as credit_card_id,
    cardtype as card_type,
    cardnumber as card_number,
    concat_ws('-', expyear, expmonth) as expiration_year_month
from {{ ref('sales_creditcard') }}