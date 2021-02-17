require './test/test_helper'

class QuoteTest < ActiveSupport::TestCase

  fixtures :quotes
  def test_create_quote
     # Create the quote with the informations present at test/fixtures/quote.yml.
     first_quote = Quote.new :building_type => quotes(:quote).building_type,
                                 :nb_app_building  => quotes(:quote).nb_app_building,
                                 :nb_floors_building  => quotes(:quote).nb_floors_building,
                                 :nb_dist_businesses => quotes(:quote).nb_dist_businesses,
                                 :nb_park_spaces      => quotes(:quote).nb_park_spaces,
                                 :nb_cages_deployed      => quotes(:quote).nb_cages_deployed,
                                 :nb_separate_tenant_companies      => quotes(:quote).nb_separate_tenant_companies,
                                 :nb_occup_floor      => quotes(:quote).nb_occup_floor,
                                 :product      => quotes(:quote).product
  end

  def test_save_quote
    first_quote = test_create_quote
    assert first_quote.save
  end

  def test_find_quote
    # Create quote
    first_quote = test_create_quote
    # Save quote  
    first_quote.save
    # Find quote inside Quote
    quote_finded = Quote.find(first_quote.id)

    # Verify if quote_finded is equal to saved_quote
    assert_equal first_quote, quote_finded
  end

  def test_destroy_contato
    # Create quote
    first_quote = test_create_quote
    # Save quote.
    first_quote.save
    # Destrou quote.
    assert first_quote.destroy
  end
end
