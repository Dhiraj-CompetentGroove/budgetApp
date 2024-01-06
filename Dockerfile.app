# Use an official Ruby runtime as a parent image
#FROM ruby:3.1.2
FROM budget-app_web
# Set the working directory in the container

#COPY init /etc/rc.local

#RUN chmod +x /etc/rc.local

WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock from the application directory into the container
COPY Gemfile Gemfile.lock ./

# Install any needed packages specified in the Gemfile
RUN bundle install

# Copy the rest of the application code into the container
COPY . .
RUN chmod +x init
# Expose port 3000 to the outside world
EXPOSE 3000

#ENTRYPOINT ["sh", "-c", "bin/rails db:migrate RAILS_ENV=development && exec"]#


CMD ["bash", "./init"]
#CMD ["rails", "server", "-b", "0.0.0.0"]
#CMD ["sh", "-c", "bin/rails db:migrate RAILS_ENV=development && rails server -b 0.0.0.0"]
