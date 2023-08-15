for i in `seq 1 25`
do
    mkdir $i
    cd $i
    rm *maf
    mkdir out tmp
    for s in Danio_rerio Acipenser_ruthenus     Amia_calva      Anguilla_anguilla       Anguilla_japonica       Antennarius_maculatus   Aplochiton_taeniatus    Astyanax_mexicanus      Branchiostoma_belcheri  Callorhinchus_milii     Channa_argus    Chanos_chanos   Cheilinus_undulatus     Chelmon_rostratus       Coilia_nasus    Ctenopharyngodon_idellus        Cynoglossus_semilaevis      Datnioides_undecimradiatus      Dicentrarchus_labrax    Electrophorus_electricus        Esox_lucius     Gadus_morhua    Gambusia_affinis        Gasterosteus_aculeatus  Gouania_willdenowi      Hemibagrus_wyckioides   Hippocampus_abdominalis Larimichthys_crocea     Lateolabrax_maculatus   Lates_calcarifer        Latimeria_chalumnae     Lepisosteus_oculatus    Lucifuga_dentata        Mastacembelus_armatus   Maylandia_zebra Megalops_cyprinoides    Myripristis_murdjan     Neolamprologus_brichardi        Neostethus_bicornis     Nothobranchius_furzeri  Notothenia_coriiceps    Oncorhynchus_mykiss Oreochromis_niloticus   Oryzias_latipes Periophthalmus_magnuspinnatus   Petromyzon_marinus      Planiliza_haematocheilus        Poecilia_formosa        Protosalanx_chinensis   Salarias_fasciatus      Scleropages_formosus    Siniperca_chuatsi       Sinocyclocheilus_graham Sparus_aurata   Sphaeramia_orbicularis  Takifugu_flavidus       Takifugu_rubripes       Thalassophryne_amazonica        Thunnus_orientalis  Trachurus_trachurus     Xiphias_gladius Xiphophorus_maculates
    do
        ln -s /path-to-lastz-result/chr$i.maf ./Danio_rerio.$s.sing.maf
    done
    tree="(Branchiostoma_belcheri ((Callorhinchus_milii ((((Lepisosteus_oculatus Amia_calva) (((((Esox_lucius Oncorhynchus_mykiss) ((((Lucifuga_dentata ((((((((((Chelmon_rostratus (Sparus_aurata ((Tetraodon_nigroviridis (Takifugu_rubripes Takifugu_flavidus)) Antennarius_maculatus))) Larimichthys_crocea) Datnioides_undecimradiatus) Dicentrarchus_labrax) ((Lateolabrax_maculatus Cheilinus_undulatus) Siniperca_chuatsi)) (Gasterosteus_aculeatus Notothenia_coriiceps)) (((Channa_argus Mastacembelus_armatus) ((Lates_calcarifer Cynoglossus_semilaevis) (Xiphias_gladius Trachurus_trachurus))) ((((Maylandia_zebra Neolamprologus_brichardi) Oreochromis_niloticus) (Neostethus_bicornis (Oryzias_latipes (((Xiphophorus_maculatus Gambusia_affinis) Poecilia_formosa) Nothobranchius_furzeri)))) ((Salarias_fasciatus Gouania_willdenowi) Planiliza_haematocheilus)))) (Periophthalmus_magnuspinnatus Sphaeramia_orbicularis)) (Thunnus_orientalis Hippocampus_abdominalis)) Thalassophryne_amazonica)) Myripristis_murdjan) Gadus_morhua) (Protosalanx_chinensis Aplochiton_taeniatus))) ((((Electrophorus_electricus (Hemibagrus_wyckioides Astyanax_mexicanus)) ((Danio_rerio Ctenopharyngodon_idella) Sinocyclocheilus_grahami)) Chanos_chanos) Coilia_nasus)) (Megalops_cyprinoides (Anguilla_anguilla Anguilla_japonica))) Scleropages_formosus)) Acipenser_ruthenus) Latimeria_chalumnae)) Petromyzon_marinus))"
    echo "roast T=$PWD/tmp M=100 E=Danio_rerio $tree ./Danio_rerio*.maf ./out/chr$i.maf" > mutiz.sh
    cd ..
done    