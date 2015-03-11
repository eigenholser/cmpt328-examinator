M4=	m4
CFDIR=	..
SED=	sed
ECHO=	echo
CHMOD=	chmod
ROMODE=	644
RM=	rm -f
alllist= for x in $(wildcard *-instructor.mc) $(wildcard *-student.mc); do \
			 ${ECHO} $${x%.mc}.tex; \
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

.SUFFIXES:  .mc .tex

.mc.tex:
	@$(RM) $@
	@$(M4) ${CFDIR}/m4/cf.m4 $*.mc > $@ || ( $(RM) $@ && exit 1 )
	@$(CHMOD) $(ROMODE) $@

all:
	@for item in `${alllist}`; do\
		${ECHO} "    Making $$item"; \
		make -s $$item; \
	done;

realclean:
	@for item in `${realcleanlist}`; do\
		${ECHO} "    Removing $$item"; \
		$(RM) $$item; \
	done;

clean:
	@for item in `${cleanlist}`; do\
		${ECHO} "    Removing $$item"; \
		$(RM) $$item; \
	done;

tidy:
	@for item in `${tidylist}`; do\
		${ECHO} "    Removing $$item"; \
		$(RM) $$item; \
	done;
