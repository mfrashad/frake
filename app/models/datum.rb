class Datum < ApplicationRecord
  mount_uploader :file_name, DataUploader
end
