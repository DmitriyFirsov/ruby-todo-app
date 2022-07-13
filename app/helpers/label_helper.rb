module LabelHelper
    def custom_label(label: nil)
        content_tag(:label) {
            concat(content_tag(:div, label)) if label
            yield
        }
    end
end
