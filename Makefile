all: index.html

%.html: %.md %.yaml template.html
	pandoc $< -o _site/$@ --metadata-file=$*.yaml -f markdown --template template.html --css css/bootstrap.css

#	pandoc $< -o $@ --metadata-file=$*.yaml -f markdown --template template.html --css bootstrap.css -B navbar.html

clean:
	$(RM) index.html
