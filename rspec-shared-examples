    require 'spec_helper'

    describe BrandsController do
      describe "#index" do
        let(:brands) { double(:brands) }

        shared_examples_for "GET index" do
          it "responds with success" do
            do_index

            expect(response.status).to eq(200)
          end

          it "renders the index template" do
            do_index

            expect(response).to render_template(:index)
          end

          it "loads brands" do
            do_index

            expect(assigns(:brands)).to eq(brands)
          end
        end

        context "with no filter" do
          before { allow(Brand).to receive(:displayable).and_return(brands) }

          it_should_behave_like "GET index"

          def do_index
            get :index, {format: :json}
          end
        end

        context "with 'top' filter" do
          before { allow(TopBrand).to receive(:all).and_return(brands) }

          it_should_behave_like "GET index"

          def do_index
            get :index, {filter: 'top'}
          end
        end
      end
    end
