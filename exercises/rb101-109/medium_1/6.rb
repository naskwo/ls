COMMANDS = %w(push add sub mult div mod pop print)

def is_i?(string) # Borrowed from Stackoverflow
  !!(string =~ /\A[-+]?[0-9]+\z/)
end

def minilang(str_command)

  int_register = 0
  ary_stack = []

  ary_commands = str_command.split.map(&:downcase)

  ary_commands.each do |command|

    if command.empty?
      return puts "ERROR: empty command."
    elsif is_i?(command)
      int_register = command.to_i
    else
      if COMMANDS.include? command
        command = command.to_sym
        case command
        when :print
          puts int_register
        when :push
          ary_stack.push int_register
        when :add
          int_register += ary_stack.pop
        when :sub
          int_register -= ary_stack.pop
        when :mult
          int_register *= ary_stack.pop
        when :div
          int_register /= ary_stack.pop
        when :mod
          int_register %= ary_stack.pop
        when :pop
          int_register = ary_stack.pop
        end
      else
        return puts "ERROR: unknown command \"#{command}\""
      end
    end
  end

end

# minilang('5 PUSH 4 MULT  PRINT')
minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')


# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

#minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# (nothing printed; no PRINT commands)
