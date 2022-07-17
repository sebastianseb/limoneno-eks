# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: midas/midas_message.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("midas/midas_message.proto", :syntax => :proto3) do
    add_message "midas.OcrConfig" do
      optional :psm, :enum, 1, "midas.OcrConfig.Psm"
      optional :lang, :string, 2
      optional :model, :enum, 3, "midas.OcrConfig.Model"
      optional :oem, :enum, 4, "midas.OcrConfig.Oem"
    end
    add_enum "midas.OcrConfig.Psm" do
      value :FULLY_AUTOMATIC_PAGE_SEGMENTATION_WITHOUT_OSD, 0
      value :OSD_ONLY, 1
      value :AUTOMATIC_PAGE_SEGMENTATION_WITH_OSD, 2
      value :AUTOMATIC_PAGE_SEGMENTATION_WITHOUT_OSD, 3
      value :ASSUME_SINGLE_COLUMN_TEXT, 4
      value :ASSUME_SINGLE_BLOCK_VERTICAL_TEXT, 5
      value :ASSUME_SINGLE_BLOCK_TEXT, 6
      value :TREAT_IMAGE_SINGLE_TEXT_LINE, 7
      value :TREAT_IMAGE_SINGLE_WORD, 8
      value :TREAT_IMAGE_SINGLE_WORD_IN_A_CIRCLE, 9
      value :TREAT_IMAGE_SINGLE_CHARACTER, 10
      value :SPARSE_TEXT, 11
      value :SPARSE_TEXT_WITH_OSD, 12
      value :RAW_LINE, 13
    end
    add_enum "midas.OcrConfig.Model" do
      value :NORMAL, 0
      value :FAST, 1
      value :BEST, 2
    end
    add_enum "midas.OcrConfig.Oem" do
      value :LSTM, 0
      value :LEGACY, 1
      value :LEGACY_LSTM, 2
      value :FIRST_TO_FOUND, 3
    end
    add_message "midas.GetTextRequest" do
      optional :file, :bytes, 1
      optional :input_format, :enum, 2, "midas.InputFormat"
      optional :output_format, :enum, 3, "midas.OutputFormat"
      optional :config, :message, 4, "midas.GetTextRequest.Config"
    end
    add_message "midas.GetTextRequest.Config" do
      optional :ocr, :message, 1, "midas.OcrConfig"
      optional :pages, :string, 2
      optional :min_image_ratio, :float, 3
    end
    add_message "midas.GetTextResponse" do
      optional :text, :string, 1
      optional :page, :int32, 2
    end
    add_message "midas.GetImagesRequest" do
      optional :file, :bytes, 1
      optional :input_format, :enum, 2, "midas.InputFormat"
      optional :pages, :string, 3
    end
    add_message "midas.GetImagesResponse" do
      optional :image, :bytes, 1
      optional :page, :int32, 2
      optional :format, :string, 3
    end
    add_enum "midas.InputFormat" do
      value :INPUT_FORMAT_AUTO, 0
      value :PDF, 1
    end
    add_enum "midas.OutputFormat" do
      value :PLAIN_TEXT, 0
      value :PLAIN_TEXT_WITH_SIGNATURES, 1
      value :HTML_TABLE, 2
    end
  end
end

module Midas
  OcrConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("midas.OcrConfig").msgclass
  OcrConfig::Psm = Google::Protobuf::DescriptorPool.generated_pool.lookup("midas.OcrConfig.Psm").enummodule
  OcrConfig::Model = Google::Protobuf::DescriptorPool.generated_pool.lookup("midas.OcrConfig.Model").enummodule
  OcrConfig::Oem = Google::Protobuf::DescriptorPool.generated_pool.lookup("midas.OcrConfig.Oem").enummodule
  GetTextRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("midas.GetTextRequest").msgclass
  GetTextRequest::Config = Google::Protobuf::DescriptorPool.generated_pool.lookup("midas.GetTextRequest.Config").msgclass
  GetTextResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("midas.GetTextResponse").msgclass
  GetImagesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("midas.GetImagesRequest").msgclass
  GetImagesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("midas.GetImagesResponse").msgclass
  InputFormat = Google::Protobuf::DescriptorPool.generated_pool.lookup("midas.InputFormat").enummodule
  OutputFormat = Google::Protobuf::DescriptorPool.generated_pool.lookup("midas.OutputFormat").enummodule
end