# Copyright 2013 Square Inc.
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.

FactoryGirl.define do
  factory :commit do
    association :project
    #sequence(:revision) { |i| i.to_s(16).rjust(40, '0') }
    sequence(:revision) { rand(16**40).to_s(16).rjust(40, '0') }
    message "Fixed nil error in foo_controller.rb"
    committed_at { Time.now }
    ready true
    skip_import true
    skip_sha_check true
  end
end
