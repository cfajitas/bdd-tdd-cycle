require "spec_helper"

describe Movie do
    it 'Same Director Method' do
      Movie.should respond_to(:similiar_director)
    end
    describe 'same director' do
      it 'receives director' do
        Movie.should respond_to(:similiar_director).with(1)
      end
      it 'returns same director' do
        Movie.create(title:'Superman',rating:'PG',director:'Marvel',release_date:'2010-03-12')
        Movie.create(title:'Flash',rating:'PG-13',director:'Speed',release_date:'2015-11-23')
        Movie.create(title:'Batman',rating:'R',director:'Marvel',release_date:'2013-08-07')
        movies = Movie.similiar_director(Movie.find_by_director('Marvel'))
        movies.should have(2).items
      end
    end
end