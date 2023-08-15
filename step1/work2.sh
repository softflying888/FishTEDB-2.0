for s in Acipenser_ruthenus     Amia_calva      Anguilla_anguilla       Anguilla_japonica       Antennarius_maculatus   Aplochiton_taeniatus    Astyanax_mexicanus      Branchiostoma_belcheri  Callorhinchus_milii     Channa_argus    Chanos_chanos   Cheilinus_undulatus     Chelmon_rostratus       Coilia_nasus    Ctenopharyngodon_idellus        Cynoglossus_semilaevis      Datnioides_undecimradiatus      Dicentrarchus_labrax    Electrophorus_electricus        Esox_lucius     Gadus_morhua    Gambusia_affinis        Gasterosteus_aculeatus  Gouania_willdenowi      Hemibagrus_wyckioides   Hippocampus_abdominalis Larimichthys_crocea     Lateolabrax_maculatus   Lates_calcarifer        Latimeria_chalumnae     Lepisosteus_oculatus    Lucifuga_dentata        Mastacembelus_armatus   Maylandia_zebra Megalops_cyprinoides    Myripristis_murdjan     Neolamprologus_brichardi        Neostethus_bicornis     Nothobranchius_furzeri  Notothenia_coriiceps    Oncorhynchus_mykiss Oreochromis_niloticus   Oryzias_latipes Periophthalmus_magnuspinnatus   Petromyzon_marinus      Planiliza_haematocheilus        Poecilia_formosa        Protosalanx_chinensis   Salarias_fasciatus      Scleropages_formosus    Siniperca_chuatsi       Sinocyclocheilus_graham Sparus_aurata   Sphaeramia_orbicularis  Takifugu_flavidus       Takifugu_rubripes       Thalassophryne_amazonica        Thunnus_orientalis  Trachurus_trachurus     Xiphias_gladius Xiphophorus_maculates
do
    mkdir $s
    fas=/yourpath/$s/*fasta
    len=/yourpath/$s/*len
    bit=/yourpath/$s/*2bit
    for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
    do
        target=~/your-path-to-reference/chr$i.2bit
        echo "lastz $target $bit  --strand=both --seed=12of19 --notransition --chain --gapped --gap=600,150 --hspthresh=10000 --gappedthresh=10000 --inner=6000 --masking=50 --xdrop=1500 --ydrop=15000  --format=axt  > chr$i.axt ;axtChain -linearGap=loose -faQ -faT  chr$i.axt  /your-path-to-reference/chr$i.fas  $fas chr$i.chain ; chainNet chr$i.chain /your-path-to-reference/Danio_rerio.fasta.len $len chr$i.maf " >>$s/shell.sh;
    done
done    
##############run shell.sh##################