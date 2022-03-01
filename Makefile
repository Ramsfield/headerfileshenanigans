.PHONY: all
all: main main.e

a.out: main.cpp include main hello_world return end_main
	g++ main.cpp -o a.out

main.e: main.cpp include main hello_world return end_main 
	g++ main.cpp -E > main.e

.PHONY: clean
clean:
	rm -rf a.out main.e
