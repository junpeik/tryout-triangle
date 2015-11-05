require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  describe '#check_triangle' do

    describe '三角形にならない場合' do

      context '0が含まれる' do 
        let!(:triangle) { Triangle.new([0, 3, 3]) }
        it { expect(triangle.check_triangle).to eq '三角形じゃないです＞＜' }
      end

      context '最大辺の長さが他の2辺の合計以上' do
        #境界値：OK [1, 2, 2] NG [1, 2, 3]
        let!(:triangle) { Triangle.new([1, 2, 3]) }
        it { expect(triangle.check_triangle).to eq '三角形じゃないです＞＜' }
      end
    end

    describe '三角形になる場合' do

      context '不等辺三角形' do
        let!(:triangle) { Triangle.new([3, 4, 6]) }
        it { expect(triangle.check_triangle).to eq '不等辺三角形ですね！' }
      end
      context '二等辺三角形' do
        let!(:triangle) { Triangle.new([3, 3, 4]) }
        it { expect(triangle.check_triangle).to eq '二等辺三角形ですね！' }
      end
      context '正三角形' do
        let!(:triangle) { Triangle.new([3, 3, 3]) }
        it { expect(triangle.check_triangle).to eq '正三角形ですね！' }
      end
    end
  end
end