require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PostsController do

  # This should return the minimal set of attributes required to create a valid
  # Post. As you add validations to Post, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PostsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  #describe "GET index" do
  #  it "assigns all posts as @posts" do
  #    post = Post.create! valid_attributes
  #    get :index, {}, valid_session
  #    expect(assigns(:posts)).to eq([post])
  #  end
  #end
  #
  describe 'creating new post' do
    it 'redirect to index page with successful message' do
      #post = Post.create! valid_attributes
      post = FactoryGirl.create(:post)
      post 'create'
      page.should have_content('saved successfully')
      response.should redirect_to(posts_path)
    end

    #it 'redirect to new page woth error message' do
    #  post 'create'
    #  flash[:notice].should be_nil
    #  response.should render 'new'
    #end
  end
  #describe "GET show" do
  #  it "assigns the requested post as @post" do
  #    post = Post.create! valid_attributes
  #    get :show, {:id => post.to_param}, valid_session
  #    expect(assigns(:post)).to eq(post)
  #  end
  #end
  #
  #describe "GET new" do
  #  it "assigns a new post as @post" do
  #    get :new, {}, valid_session
  #    expect(assigns(:post)).to be_a_new(Post)
  #  end
  #end
  #
  #describe "GET edit" do
  #  it "assigns the requested post as @post" do
  #    post = Post.create! valid_attributes
  #    get :edit, {:id => post.to_param}, valid_session
  #    expect(assigns(:post)).to eq(post)
  #  end
  #end

#  describe "POST create" do
#    describe "with valid params" do
#      it "creates a new Post" do
#        expect {
#          post :create, {:post => valid_attributes}, valid_session
#        }.to change(Post, :count).by(1)
#      end
#
#      it "assigns a newly created post as @post" do
#        post :create, {:post => valid_attributes}, valid_session
#        expect(assigns(:post)).to be_a(Post)
#        expect(assigns(:post)).to be_persisted
#      end
#
#      it "redirects to the created post" do
#        post :create, {:post => valid_attributes}, valid_session
#        expect(response).to redirect_to(Post.last)
#      end
#    end
#
#    describe "with invalid params" do
#      it "assigns a newly created but unsaved post as @post" do
#        # Trigger the behavior that occurs when invalid params are submitted
#        Post.any_instance.stub(:save).and_return(false)
#        post :create, {:post => { "name" => "invalid value" }}, valid_session
#        expect(assigns(:post)).to be_a_new(Post)
#      end
#
#      it "re-renders the 'new' template" do
#        # Trigger the behavior that occurs when invalid params are submitted
#        Post.any_instance.stub(:save).and_return(false)
#        post :create, {:post => { "name" => "invalid value" }}, valid_session
#        expect(response).to render_template("new")
#      end
#    end
#  end
#
#  describe "PUT update" do
#    describe "with valid params" do
#      it "updates the requested post" do
#        post = Post.create! valid_attributes
#        # Assuming there are no other posts in the database, this
#        # specifies that the Post created on the previous line
#        # receives the :update_attributes message with whatever params are
#        # submitted in the request.
#        expect_any_instance_of(Post).to receive(:update).with({ "name" => "MyString" })
#        put :update, {:id => post.to_param, :post => { "name" => "MyString" }}, valid_session
#      end
#
#      it "assigns the requested post as @post" do
#        post = Post.create! valid_attributes
#        put :update, {:id => post.to_param, :post => valid_attributes}, valid_session
#        expect(assigns(:post)).to eq(post)
#      end
#
#      it "redirects to the post" do
#        post = Post.create! valid_attributes
#        put :update, {:id => post.to_param, :post => valid_attributes}, valid_session
#        expect(response).to redirect_to(post)
#      end
#    end
#
#    describe "with invalid params" do
#      it "assigns the post as @post" do
#        post = Post.create! valid_attributes
#        # Trigger the behavior that occurs when invalid params are submitted
#        Post.any_instance.stub(:save).and_return(false)
#        put :update, {:id => post.to_param, :post => { "name" => "invalid value" }}, valid_session
#        expect(assigns(:post)).to eq(post)
#      end
#
#      it "re-renders the 'edit' template" do
#        post = Post.create! valid_attributes
#        # Trigger the behavior that occurs when invalid params are submitted
#        Post.any_instance.stub(:save).and_return(false)
#        put :update, {:id => post.to_param, :post => { "name" => "invalid value" }}, valid_session
#        expect(response).to render_template("edit")
#      end
#    end
#  end
#
#  describe "DELETE destroy" do
#    it "destroys the requested post" do
#      post = Post.create! valid_attributes
#      expect {
#        delete :destroy, {:id => post.to_param}, valid_session
#      }.to change(Post, :count).by(-1)
#    end
#
#    it "redirects to the posts list" do
#      post = Post.create! valid_attributes
#      delete :destroy, {:id => post.to_param}, valid_session
#      expect(response).to redirect_to(posts_url)
#    end
#  end
#
end
