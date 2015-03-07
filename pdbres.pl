print "Enter PDB File Name:";
$pdbn=<STDIN>;
print "Enter Output  PDB File Name:";
$pdbo=<STDIN>;
print "Enter Chain Para 1:";
$pdbc1=<STDIN>;
print "Enter Chain Para 2:";
$pdbc2=<STDIN>;
print "Enter RES Para 1:";
$pdbr1=<STDIN>;
print "Enter RES Para 2:";
$pdbr2=<STDIN>;
print "Enter Chain Name:";
chomp($pdb1=<STDIN>);
print "Amino Acid Name:";
chomp($pdb2=<STDIN>);
open(in,"../$pdbn");
open(out,">$pdbo");
@pdb=<in>;
for($i=0;$i<=$#pdb;$i++)
{
        chomp $pdb[$i];
        if($pdb[$i]=~/^ATOM/)
        {
                $chain=substr($pdb[$i],$pdbc1,$pdbc2);
                $residue=substr($pdb[$i],$pdbr1,$pdbr2);
                if($chain eq "$pdb1" && $residue eq "$pdb2")
                {
                        print out  "$pdb[$i] \n";
                        print "$pdb[$i] \n";
                }
        }
}
