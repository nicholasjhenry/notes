Pass in parameters

    task :migrate_images, [:username, :password] => [:environment] do |t, args|¬
      puts args[:username]
    end

List all tasks

    rake -T --all

Invoke rake tasks

    Rake::Task["build"].invoke
