class Application

        def call(env)
                resp = Rack::Response.new
                resp.write "Hello, World\n"

                puts num_1 = Kernel.rand(1..7)
                puts num_2 = Kernel.rand(1..7)
                puts num_3 = Kernel.rand(1..7)

                resp.write "|#{num_1}"
                resp.write "|#{num_2}"
                resp.write "|#{num_3}|\n"
                

                if num_1 == num_2 && num_2 == num_3
                        puts "You Win"
                        resp.write "You Win"
                elsif num_1 == num_3 || num_1 == num_2 || num_2 == num_3
                        puts "You Tried"
                        resp.write "You Tried"
                else
                        puts "You Lose"
                        resp.write "You Lose"
                end
                resp.finish
        end

end
