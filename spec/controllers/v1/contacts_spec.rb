require 'rails_helper'

 describe V1::ContactsController, type: :controller do 
    it 'request index and return 406 OK' do 
        get :index
        expect(response).to have_http_status(406)
    end

    it 'request index and return 200 OK' do 
        get :index
        expect(response).to have_http_status(200)
    end

    it 'GET v1/contacts/:id' do 
        get :index
        expect(response).to have_http_status(200)
    end
end 