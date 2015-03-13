M4=	m4
CFDIR=	..
SED=	sed
ECHO=	echo
CHMOD=	chmod
ROMODE=	644
RM=	rm -f
alllist= for x in $(wildcard *-instructor.mc) $(wildcard *-student.mc); do \
			 ${ECHO} $${x%.mc}; \
		 done
realcleanlist= for x in $(wildcard *-instructor*) $(wildcard *-student*); do \
				  ${ECHO} $$x; \
		       done
cleanlist= for x in $(wildcard *-instructor*) $(wildcard *-student*); do \
			   ${ECHO} $$x | sed -e s/$${x%.mc}.mc//; \
		   done
tidylist= for x in $(wildcard *-instructor*) $(wildcard *-student*); do \
			  ${ECHO} $$x | sed -e s/$${x%.tex}.tex// \
								-e s/$${x%.mc}.mc//; \
		  done

%.tex : %.mc
	@$(RM) $@
	@$(M4) ${CFDIR}/m4/cf.m4 $*.mc > $@ || ( $(RM) $@ && exit 1 )
	@$(CHMOD) $(ROMODE) $@

%.dvi : %.tex
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

realclean:
	@for item in `${realcleanlist}`; do\
		${ECHO} "Removing $$item"; \
		$(RM) $$item; \
	done;

clean:
	@for item in `${cleanlist}`; do\
		${ECHO} "Removing $$item"; \
		$(RM) $$item; \
	done;

tidy:
	@for item in `${tidylist}`; do\
		${ECHO} "Removing $$item"; \
		$(RM) $$item; \
	done;
