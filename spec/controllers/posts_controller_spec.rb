require 'rails_helper'

RSpec.describe PostsController, type: :controller do
    describe "GET #index" do

        before do
            get :index
        end

        it "returns http success" do
            expect(response).to have_http_status(:success)
        end
        
        it "JSON body response contains expected post attributes" do
            json_response = JSON.parse(response.body)
        end
    end

    describe "POST #create" do
        it "should create post" do
            expect(response).to have_http_status(:ok)
        end
    end

    describe "DELETE #destroy" do
        it 'should delete post' do
            expect(response).to have_http_status(:success)
        end
    end
end
