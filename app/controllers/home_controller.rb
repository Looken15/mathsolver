#require 'silicium'
require 'nmatrix'

class HomeController < ApplicationController
  def index
    @problems = Problem.all
  end

  def solve_problem
    ex_sol = Solution.find_by_problem_id params[:id]
    unless ex_sol.nil?
      @solution = ex_sol
      return render 'solve_problem'
    end  
    
     problem = Problem.find_by_id params[:id]
     problem.solve  
     Rails.logger.info problem.solution.errors.full_messages
     @solution = problem.solution
  end

  def new
    @error = params[:error]
    @n = 4
    @m = 3
  end

  def create
    problem = Problem.create(problem_params)
    if problem.valid?
        return redirect_to action: 'index' 
    else
        return redirect_to action: 'new', error: problem.errors.full_messages.join("\n")
    end
  end
  
  private
  
  def problem_params
      params.permit(:matrix, :n, :m, :b)  
  end

end
