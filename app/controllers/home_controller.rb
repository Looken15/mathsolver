#require 'silicium'
require 'nmatrix'

class HomeController < ApplicationController
  def index
    @problems = Problem.all
  end

  def solve_problem
    ex_sol = Solution.find_by_problem_id params[:id]
    if !ex_sol.nil?
      @solution = ex_sol
    else
      problem = Problem.find_by_id params[:id]
      coeffs = NMatrix.new([problem.m, problem.n],
                           problem.matrix.split(' ').map { |s| s.to_f }, dtype: :float32)

      rhs = NMatrix.new([problem.n, 1],
                        problem.b.split(' ').map { |s| s.to_f }, dtype: :float32)
      solution = Solution.new
      solution.problem_id = params[:id]
      solution.answer = coeffs.solve(rhs).to_a.map { |a| a.first }.join(' ')
      solution.save
      Rails.logger.info solution.errors.full_messages
      @solution = solution
    end
  end

  def method_kramer
    @n = 4
    @m = 3

  end

  def create
    render json: params[:matrix]
  end

end
