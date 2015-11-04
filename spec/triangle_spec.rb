require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  describe '#check_triangle' do
    describe '三角形にならない場合' do
      context '0が含まれる' do
      end
      context '1辺が他の2辺の合計よりも長い' do
      end
    end

    describe '三角形になる場合' do
      context '不等辺三角形' do
      end
      context '二等辺三角形' do
      end
      context '正三角形' do
      end
    end
  end
end