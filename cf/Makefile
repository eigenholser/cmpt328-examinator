M4=	m4
CFDIR=	..
SED=	sed
ECHO=	echo
CHMOD=	chmod
ROMODE=	644
RM=	rm -f
alllist= for x in $(wildcard *-instructor.ec) $(wildcard *-student.ec) \
		          $(wildcard *audit.ec); do \
			 ${ECHO} $${x%.ec}; \
		 done
savelist= for x in $(wildcard *-instructor.ec) $(wildcard *-student.ec); \
			do \
			 ${ECHO} $$x; \
			done
installlist= for x in $(wildcard *-instructor.ps) $(wildcard *-student.ps) \
		          $(wildcard *-instructor.pdf) $(wildcard *-student.pdf); \
			do \
			 ${ECHO} $$x; \
			done
realcleanlist= for x in $(wildcard *-instructor*) $(wildcard *-student*) \
			            $(wildcard *audit*); do \
				  ${ECHO} $$x; \
		       done
cleanlist= for x in $(wildcard *-instructor*) $(wildcard *-student*) \
		            $(wildcard *audit*); do \
			   ${ECHO} $$x | sed -e s/$${x%.ec}.ec//; \
		   done
tidylist= for x in $(wildcard *-instructor*) $(wildcard *-student*) \
		           $(wildcard *audit.ec); do \
			  ${ECHO} $$x | sed -e s/$${x%.tex}.tex// \
								-e s/$${x%.ec}.ec//; \
		  done

%.tex : %.ec
	@$(RM) $@
	@$(M4) ${CFDIR}/m4/cf.m4 $*.ec > $@ || ( $(RM) $@ && exit 1 )
	@$(CHMOD) $(ROMODE) $@

%.dvi : %.tex
	@latex $< > /dev/null 2>&1
	@latex $< > /dev/null 2>&1

%.ps : %.dvi
	@dvips $< > /dev/null 2>&1

%.pdf : %.ps
	@ps2pdf $< > /dev/null 2>&1

TYPES=tex dvi ps pdf
all :
	@for item in `${alllist}`; \
	do  \
		export TARGET=$$item; \
		echo "Making $${TARGET}"; \
		PREREQ=''; \
		for type in ${TYPES}; \
		do \
			PREREQ="$${PREREQ} $${item}.$${type}"; \
			make -s "$${TARGET}.$${type}"; \
		done; \
	done

${TARGET} : ${PREREQ}

save :
	@install -d ../cf_save; \
	for item in `${savelist}`; \
	do \
		echo "Installing cf_save/$$item"; \
		install --mode 644 $$item ../cf_save; \
	done

install :
	@install -d ../exam; \
	for item in `${installlist}`; \
	do \
		echo "Installing exam/$$item"; \
		install --mode 644 $$item ../exam; \
	done

realclean:
	@for item in `${realcleanlist}`; do\
		${ECHO} "Removing $$item"; \
		$(RM) $$item; \
	done

clean:
	@for item in `${cleanlist}`; do\
		${ECHO} "Removing $$item"; \
		$(RM) $$item; \
	done

tidy:
	@for item in `${tidylist}`; do\
		${ECHO} "Removing $$item"; \
		$(RM) $$item; \
	done;
