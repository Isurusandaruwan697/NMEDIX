class NewsData {
  String? title;
  String? content;
  String? urlToImage;
  String? date;
  String? author;

  NewsData(this.title, this.author, this.content, this.date, this.urlToImage);

  //I will copy the data from my previous code, you can create your own data , I used newsApi to get the data
  static List<NewsData> breakingNewsData = [
    // NewsData(
    //     "N.S.B.M Modecal center informed!",
    //     "Isabella Simonetti",
    //     "After peaking in June, they are back where they were in March, offering some relief to consumers and policymakers amid inflation worries.",
    //     "2023-08-11",
    //     "https://nypost.com/wp-content/uploads/sites/2/2022/08/twitter-election-misinformation-99.jpg?quality=75&strip=all&w=1024"),
    // NewsData(
    //     "BYD Is Taking Electric Vehicles To The World!",
    //     "Remeredzai Joseph Kuhudzai",
    //     "There was quite a bit of drama on several forums following reports in various media platforms around the world that BYD has overtaken Telsa to become the top-selling EV company. In fact, there was quite a bit of an uproar from some circles that felt that it w…",
    //     "2023-08-11",
    //     "https://cleantechnica.com/files/2022/05/BYD-Atto-3.jpeg"),
    // NewsData(
    //     "Unexpected storms diverted 100 American Airlines flights and sparked hundreds of cancellations",
    //     "Marnie Hunter",
    //     "Severe thunderstorms around Dallas-Fort Worth International Airport on Wednesday caused 100 American Airlines flight diversions and led to hundreds of cancellations that extended into Thursday's schedule.",
    //     "2023-08-11",
    //     "https://cdn.cnn.com/cnnnext/dam/assets/220811123809-dfw-american-airlines-file-restricted-super-tease.jpg"),

    NewsData(
        "Researchers develop a wearable bioelectronic system for wound healing treatment delivery.",
        "Pooja Toshniwal Paharia",
        "Researchers presented a wearable bioelectronic system to deliver therapeutic agents associated with wound healing.The assembly method allows for the interchange of subsystem components, such as different PCB designs and reservoir solutions. Immunohistochemistry staining revealed a 36% improvement in the M1/M2 ratio of H+-treated wounds compared to control wounds, showing that the platform can potentially promote wound repair.Particularly, the gadget may supply charged biomolecules, ions, and electric fields continuously in the in vivo as well as ex vivo settings. This stand-alone technology might be expanded to function as a component of the closed-loop-type wearable medicine delivery platform. Due to the modularity of the integration process, the PDMS device structure remained unaltered while the PCB was upgraded to achieve varied degrees of system capability. The platform could deliver ions when utilized in the wearable form in full-thickness, splinted wounds on murine models as a proof of concept.",
        "2023-09-12",
        "https://assets-global.website-files.com/5f474a0b99ae738958cc230d/62e8a30a8acaee13854c81f3_hydrocolloid-awc-blogd4a417b05d2b680ba192ff0000f6456c.jpg"),
    NewsData(
        "Human post-implantation embryo models show promise in unraveling early development.",
        "Dr. Priyom Bose",
        "Researchers evaluate post-implantation development in humans using embryo-like models based on genetically unmodified human naïve embryonic stem cells.Using the method described in a mouse model, the current study generated self-organizing human post-implantation SEMs from naive ESCs. In contrast to mouse SEM derivation protocols, the current study protocol did not require genetic modification or overexpression of exogenous lineage factors for naïve ESCs to differentiate into key embryonic lineages essential for developmental stages.The self-organization capacity of naïve PSCs to generate embryonic and extra-embryonic compartments, including the ExEM, was described. Notably, newly created ex utero human SEMs resembled the three-dimensional (3D) architecture and crucial developmental markers of in utero of natural human embryos, particularly from 7-8dpf to 13-14dpf based on Carnegie stages 5a-6a. Carnegie stages are a standardized system used by embryologists to describe the maturity of embryos.",
        "2023-09-12",
        "https://new-img.patrika.com/upload/2023/06/15/sythentic_embryo1.jpg"),

    NewsData(
        "The safety and efficacy of the nano-based COVID-19 vaccine",
        "Dr. Priyom Bose",
        "A recent study evaluated the safety and efficacy of the GBP510 vaccine against SARS-CoV-2 infection. The long-term immunity was assessed after six months in 604 participants in GBP510/AS03 and 310 participants in the ChAdOx1-S group. The current study indicated that immune responses triggered after two doses of GBP510/AS03 vaccine in seronegative adults were significantly more than similar doses of ChAdOx1-S vaccination. This observation was based on the geometric mean titer (GMT) of neutralizing antibody and non-inferiority seroconversion rate (SCR) at 2 weeks after the second vaccination. The efficacy of neutralizing antibodies triggered after both vaccines was assessed using the ancestral D614G strain. A higher level of SARS-CoV-2 RBD-binding IgG antibody was observed for GBP510/ AS03 compared to ChAdOx1-S after 2 weeks of the second vaccination. It must be noted that a higher immune response with GBP510/AS03 against the ancestral strain was observed irrespective of ethnicity, age, or gender. Comp	         ared to ChAdOx-1S, GBP510/AS03 induced higher neutralizing antibody responses against the Delta and Omicron variants as well. A focus reduction neutralization test (FRNT) indicated a higher efficacy of GBP510/AS03 in both study cohorts. Compared to a phase 1/2 study, a higher immune response was observed in the current phase 3 trial, indicating an increase in GMT from 8.18 to 272.12 IU/mL. In addition, a higher geometric mean concentration (GMC) of IgG binding antibody was found at 2 weeks after the second dose of GBP510/AS03 in the phase 3 trial.",
        "2023-09-12",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXdS4aM_0Wu-v0V-SGvGLU1Xs5upDStTvTP7fHwFSpQwRem5tO7C4sqX0tTUdG49-KCX0&usqp=CAU"),

    NewsData(
        "Experts propose new definition of clinical remission in treatment of asthma",
        "Lily Ramsey",
        "As an increasing number of improved asthma treatments are developed, a greater number of people with asthma are finding their symptoms under control.Their improved status raises an important question for healthcare providers (HCPs) who treat this condition: What qualifies as clinical remission in the treatment of asthma A panel of 11 experts in asthma care came together to review available literature to create a working definition. The panel included six allergists, three pulmonologists and two pediatricians. The paper outlining their recommendations is published in Annals of Allergy, Asthma and Immunology, the scientific journal of the American College of Allergy, Asthma and Immunology.As the term remission has historically implied total control of asthma, without medication use, the workgroup proposed six criteria for asthma clinical remission on treatment. Of the six criteria, three had unanimous consent while the remaining three had factors that remain under consideration.",
        "2023-09-12",
        "https://images.squarespace-cdn.com/content/v1/5beb00a47e3c3abd688e43b4/1610967485775-IO0S9VV8LIFSNDR3MKEU/image-asset.jpeg"),
  ];

  static List<NewsData> recentNewsData = [
    // NewsData(
    //     "Teens have abandoned Facebook, Pew study says",
    //     "Amanda Silberling",
    //     "Gen Z internet use is on the rise, but the rate at which teens use Facebook is rapidly declining. A Pew Research Center study on teens, technology and social media found that only 32% of teens aged",
    //     "2023-08-11",
    //     "https://techcrunch.com/wp-content/uploads/2022/08/fb-exit-2022.jpg?w=711"),
    // NewsData(
    //     "Fox-owned Tubi expands its free streaming service to five Latin American countries",
    //     "Lauren Forristal",
    //     "Tubi, the free ad-supported streaming service owned by Fox, is now available in Costa Rica, Ecuador, El Salvador, Guatemala, and Panama — an expansion that has doubled its global footprint and signals the company's interest in capturing more Latin American",
    //     "2022-08-11",
    //     "https://techcrunch.com/wp-content/uploads/2022/05/cross-device_wave.png?w=711"),
    // NewsData(
    //     "Massive iron batteries could be key to displacing natural gas from the grid",
    //     "Tim De Chant",
    //     "VoltStorage recently raised a Series C worth \$24 million from engine manufacturer Cummins. Its previous rounds included investments from SOSV and EIT InnoEnergy.",
    //     "2022-08-11",
    //     "https://techcrunch.com/wp-content/uploads/2022/08/electrical-grid-at-night.jpg?w=600"),
    // NewsData(
    //     "Mark Cuban, Mavericks in hot water over Voyager \"Ponzi scheme\"",
    //     "Anita Ramaswamy",
    //     "The class-action lawsuit alleges that Cuban's promotion of now-bankrupt crypto firm Voyager cost investors \$5 billion",
    //     "2022-08-11",
    //     "https://techcrunch.com/wp-content/uploads/2016/02/54816c7904ab43c9af6a09d12d936b0e.jpg?w=600"),

    NewsData(
        "The science behind lifestyle's role in preventing depression.",
        "By Dr. Liji Thomas",
        "Given the rising rates of depression, a recent paper in Nature Mental Health looks at the effect of a range of lifestyle factors in relation to the brain structure, immune function metabolic pathways and genetic mechanisms, that are responsible for depression.According to the World Health Organization, around one in 20 adults experiences depression, and the condition poses a significant burden on public health worldwide. The factors that influence the onset of depression are complicated and include a mixture of biological and lifestyle factors.To better understand the relationship between these factors and depression, the researchers turned to the UK Biobank, a biomedical database and research resource containing anonymized genetic, lifestyle, and health information about its participants.",
        "Sep 13 2023",
        "https://th.bing.com/th/id/OIP.5I7vTA_4PWK1M_VFhCE7ngHaDt?w=300&h=175&c=7&r=0&o=5&dpr=1.1&pid=1.7"),
    NewsData(
        "What is Incontinentia Pigmenti?",
        "By Schwieger-Briel A",
        "Incontinentia pigmenti (IP) is a rare multisystemic condition with characteristic skin lesions. Also known as Bloch-Sulzberger syndrome,it affects different sites of the body, including the skin, eyes, hair, teeth, nails, and central nervous system.The existence of neurological and/or visual impairment influences the severity of the disease. IP is an X-linked dominant disorder that primarily develops at birth or during early childhood.Incontinentia pigmenti can develop due to mutations in the IKBKG or the NEMO gene. It mostly affects women; however, there have been accounts of males being affected as well.Skin lesions, ocular abnormalities, abnormalities of the central nervous system, and dental deformities are characteristic clinical manifestations of incontinentia pigmenti. The main feature is that the skin lesions begin as vesiculobullous lesions and proceed through four phases to whorl-like pigmentary lesions.",
        "Sep 12, 2023",
        "https://img.medscape.com/thumbnail_library/885128.jpg"),
    NewsData(
        "Machine learning shows promise for coronary artery disease risk assessment",
        "By Pooja Toshniwal Paharia",
        "In a recent study published in Scientific Reports, researchers investigated the performance of a machine learning (ML)-based model in evaluating radiomic features to diagnosecoronary artery disease (CAD) and its susceptibility using myocardial perfusion imaging (MPI) single-photon emission computed tomography (SPECT) images.",
        "Sep 13 2023",
        "https://d2jx2rerrg6sh3.cloudfront.net/images/news/ImageForNews_758854_1694613754995897.jpg"),
    NewsData(
        "Using biological safety cabinets for microbiology research",
        "by Monmouth Scientific",
        "The University of Birmingham's Surgical Reconstruction and Microbiology Research Centre serves as a national hub for trauma research, applying insights gained from militaryexperiences to enhance medical outcomes for all patientsThis study gathers saliva and urine samples from injured Premier League players and uninjured control players. Club doctors will collect these samples immediately after matches and at subsequent intervals during a players recovery. ",
        "Sep 12,2023",
        "https://newsroom.unsw.edu.au/sites/default/files/thumbnails/image/shutterstock_lower_res_4.jpg"),
    NewsData(
        "What Does the Future of Liquid Biopsies Look Like?",
        "By Maira Ahsan",
        "Despite multiple studies indicating the potential of liquid biopsies to fulfill current demands in cancer care, their usefulness remains debatable. In a recent study, the performance of two commercially available NGS-based ctDNA assays for metastatic prostate cancer was compared.Liquid biopsy, or the evaluation of malignancies using biomarkers found in bodily fluids, has gained popularity in recent years. Technologies that can detect and describe cancers in minimally invasive and repeatable ways have made significant progress and may have important therapeutic implications.However, the two most well-developed liquid biopsy biomarkers, circulating tumor cells (CTCs) and circulating cell-free tumor DNA (ctDNA), are subject to technical variance both pre-analytically and post-analytically.Researchers must now focus on establishing the efficacy of these biomarkers to overcome these obstacles and increase the number of practitioners using liquid biopsy, as one of oncology's main goals is to create early detection tools. This article will explore the significance and prospects of liquid biopsy.",
        "Sep 12 2023",
        "https://d2jx2rerrg6sh3.cloudfront.net/images/Article_Images/ImageForArticle_23857_16945345609962776.jpg"),
  ];
}
