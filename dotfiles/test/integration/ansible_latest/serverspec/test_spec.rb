# write your serverspec tests here!
require 'spec_helper'

describe package('vim-nox') do
  it { should be_installed }
end

describe package('git') do
  it { should be_installed }
end

describe package('zsh') do
  it { should be_installed }
end

describe package('screen') do
  it { should be_installed }
end

describe package('python-pip') do
  it { should be_installed }
end

describe file('.dotfiles') do
  it { should be_directory }
end
