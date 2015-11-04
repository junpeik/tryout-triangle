#coding: utf-8
class Triangle

  def initialize
    @args = ARGV.map{ |i| i.to_i }
    @args.sort!
  end

  def check_triangle
    if not_triangle?
      puts '三角形じゃないです＞＜'
      return
    end
    triangle_shape
  end

  private

    def not_triangle?
      @args[2] >= @args[0] + @args[1] || @args[0] == 0
    end

    #同じ辺の組み合わせの数
    def same_edge_num
      @args.combination(2).to_a.map{ |a,b| a == b }.count(true)
    end

    def triangle_shape
      case same_edge_num
      when 0
        puts '不等辺三角形ですね！'
      when 1
        puts '二等辺三角形ですね！'
      when 3
        puts '正三角形ですね！'
      end
    end
end