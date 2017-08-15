add_executable(fp fp.s)
add_executable(int int.s)

# as -arch x86_64  -o hello.o hello.asm
# ld -o hello hello.o

#find_program(YASM_EXE NAMES yasm)
#
#add_custom_command(OUTPUT hello.o COMMAND ${YASM_EXE}
#        ARGS -f elf64 -o hello.o ${CMAKE_CURRENT_SOURCE_DIR}/hello.asm)
#
#set(CMAKE_INCLUDE_CURRENT_DIR ON)
#add_library(Hello hello.o)
#set_target_properties(Hello PROPERTIES LINKER_LANGUAGE CXX)