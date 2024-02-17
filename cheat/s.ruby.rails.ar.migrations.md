## Migrations

    rake migrations:status

    rails g resource user name:index email:uniq token:string{6} bio:text
    rails g resource article user:references subject body:text
    rails g resource article user:belongs_to subject body:text
    rails g migration AddDetailsToProducts 'price:decimal{5,2}' supplier:references{polymorphic}

## Decimal

- precision: total number of digits
- scale: number of digits following the decimal point

    add_column :order, :total, :decimal, precision: 8, scale: 2, default:  0.0

## Run a specific migration

rails console
>> require "db/migrate/20090408054532_add_foos.rb"
>> AddFoos.new.change
