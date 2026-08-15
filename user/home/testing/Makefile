.PHONY: all run clean

all: main

main: main.jank
	jjc main.jank -o main --follow-includes

run: main
	./main

clean:
	rm -f main
