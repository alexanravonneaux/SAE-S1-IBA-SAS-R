data a; 
input vote$ region$ effectif @@;
cards;
bleu A 115 Bleu B 55 Bleu C 60 Rouge A 115 Rouge B 30 Rouge C 90 Vert A 80 Vert B 30 Vert C 50
;
run;

proc freq data=a;
table region*vote/chisq expected expected cellchi2 norow nocol nopercent ;
weight effectif;
run;
quit;
