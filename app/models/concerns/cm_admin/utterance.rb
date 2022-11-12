module CmAdmin::Utterance
  extend ActiveSupport::Concern
  included do
    cm_admin do
      actions only: []
      cm_index do
        page_title 'Utterances'
        page_description 'Manage all utterances here'

        filter [:context], :search, placeholder: 'Search'

        column :context, header: 'Context'
      end

      cm_show page_title: :context, page_description: "Utterance Details" do
        tab :profile, '' do
          cm_show_section 'Utterance Details' do
            field :context, label: 'Context'
            field :intent_id, label: 'Intent Id'
          end
        end
      end

      cm_new page_title: 'Add Utterance', page_description: 'Enter all details to add utterance' do
        form_field :context, input_type: :string, label: 'Context'
        form_field :intent_id, input_type: :single_select, label: 'Intent', helper_method: :intent_collection
      end

      cm_edit page_title: 'Edit Utterance', page_description: 'Edit details of the utterance' do
        form_field :context, input_type: :string, label: 'Context'
        form_field :intent_id, input_type: :single_select, label: 'Intent', helper_method: :intent_collection
      end
    end
  end
end