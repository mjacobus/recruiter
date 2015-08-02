require 'spec_helper'

module Recruiter
  describe ArticlesController, type: :controller do
    include ControllersSpecHelpers
    routes { Recruiter::Engine.routes }

    let(:published) { Article.make! }
    let(:unpublished) { Article.make!(published: false) }


    describe "GET index" do
      before do
        published
        unpublished
      end

      it 'assigns published articles' do
        get :index
        expect(assigns(:articles)).to eq([published])
      end

      it 'responds with success' do
        get :index
        expect(response).to be_success
      end
    end

    describe 'GET show' do
      context "with published record" do
        before do
          get :show, id: published.id
        end

        it "responds with success" do
          expect(response).to be_success
        end

        it "assigns @article" do
          expect(assigns(:article)).to eq(published)
        end
      end

      context 'with unpublished article' do
        it "raises error" do
          expect do
            get :show, id: unpublished
          end.to raise_error(ActiveRecord::RecordNotFound)
        end
      end
    end
  end
end
