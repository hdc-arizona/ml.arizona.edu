all: index.html



#index.html: index.md index.yaml template.html
#	pandoc index.md -o $@ --metadata-file=index.yaml -f markdown --template template.html --css bootstrap.css 

%.html: %.md %.yaml 
	pandoc $< -o $@ --metadata=$*.yaml -f markdown --template template.html --css bootstrap.css 

#	pandoc $< -o $@ --metadata-file=$*.yaml -f markdown --template template.html --css bootstrap.css -B navbar.html

clean:
	$(RM) index.html syllabus.html schedule.html project.html
