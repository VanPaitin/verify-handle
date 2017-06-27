class V1::UserNamesController < ApplicationController
  def twitter
    @user = Tweet::Client.user(params[:screen_name])
    render json: @user
  rescue Twitter::Error::NotFound
    render(
      json: { no_handle: "There is no user with that twitter handle" },
      status: 404
    )
  rescue Twitter::Error
    render_error
  end

  def linkedin
    @profile = LinkedInProfile::Client.profile(url: params[:url])
    render json: @profile
  rescue LinkedIn::Errors::NotFoundError
    render(
      json: { invalid_url: "The profile url given is invalid. "\
        "You might want to take another look at it" },
      status: 404
    )
  rescue LinkedIn::Errors::GeneralError
    render_error
  end

  def github
    @user = Github::Client.user params[:username]
    render json: @user
  rescue Octokit::NotFound
    head 404
  rescue Octokit::Error
    render_error
  end

  def no_handle
    render json: { "No handle" => "Please enter an handle" }
  end

  private

  def render_error
    render json: { Error: general_error }, status: 500
  end

  def general_error
    "Something unfortunate happened, either request timed out or something else"
  end

end
