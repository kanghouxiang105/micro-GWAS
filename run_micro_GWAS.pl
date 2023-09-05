use strict;
my @pp1;
open (IN1, "files_81.txt")||die;
while (<IN1>) 
{
	chomp;
	next if ($_ eq "");
	if ($_=~/([^\s]+)/) 
	{
		push (@pp1, $1);
	}
}
close INI1;


######my @pp1=glob("*xml");

#mlm_output_tutorialEETTChr12.txt
#mlm_output_tutorialEETTChr13.txt

foreach my $f1 (@pp1) 
{
	my @pp2=split(/\./, $f1);
	print $pp2[0]."\n";
	my $f2=$pp2[0]."_"."mlm_output_tutorialEETTChr12.txt";
	my $f3=$pp2[0]."_"."mlm_output_tutorialEETTChr13.txt";
	my $f4="mlm_output_tutorialEETTChr11.txt";
	my $f5="mlm_output_tutorialEETTChr14.txt";

	system ("perl  /home/kanghouxiang1/softwares/tassel5_old/tassel-5-standalone/test_run_pipeline.pl -configFile $f1");
	system ("mv mlm_output_tutorialEETTChr12.txt $f2");
	system ("mv mlm_output_tutorialEETTChr13.txt $f3");
	system ("rm $f4");
	system ("rm $f5");

}
