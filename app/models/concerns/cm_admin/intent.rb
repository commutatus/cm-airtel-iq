module CmAdmin::Intent
  extend ActiveSupport::Concern
  included do
    cm_admin do
      actions only: []
      cm_index do
        page_title 'Intents'
        page_description 'Manage all intents here'

        filter [:intent_name], :search, placeholder: 'Search'

        column :intent_name, header: 'Intent Name'
      end

      cm_show page_title: :intent_name, page_description: "Intent Details" do
        tab :profile, '' do
          cm_show_section 'Intent Details' do
            field :intent_name, label: 'Intent Name'
            field :user_id, label: 'User Id'
            field :chatbot_id, label: 'Chatbot Id'
          end
        end
      end

      tab :utterances, 'utterances', associated_model: :utterances, layout_type: 'cm_association_index' do
        column :context, header: 'Context'
      end

      cm_new page_title: 'Add Intent', page_description: 'Enter all details to add intent' do
        form_field :email, input_type: :string, label: 'Email'
        form_field :user_id, input_type: :single_select, label: 'User', helper_method: :user_collection
        form_field :chatbot_id, input_type: :single_select, label: 'Chatbot', helper_method: :chatbot_collection
      end

      cm_edit page_title: 'Edit Intent', page_description: 'Edit details of the intent' do
        form_field :email, input_type: :string, label: 'Email'
        form_field :user_id, input_type: :single_select, label: 'User', helper_method: :user_collection
        form_field :chatbot_id, input_type: :single_select, label: 'Chatbot', helper_method: :chatbot_collection
      end
    end
  end
end