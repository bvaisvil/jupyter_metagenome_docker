from jupyter/datascience-notebook

RUN conda update -n base conda
RUN conda install -c bioconda bioconductor-biocinstaller bioconductor-metagenomeseq bioconductor-phyloseq bioconductor-deseq2 bioconductor-biomformat bioconductor-genomeinfodb bioconductor-iranges bioconductor-dada2 
RUN conda install -c bioconda r-ggpubr r-devtools tar r-doparallel bioconductor-msa
RUN conda install -c bioconda r-rcurl openssl=1.0
RUN conda install -c bioconda tar
RUN echo 'Sys.setenv(TAR = "/bin/tar"); devtools::install_github("gavinsimpson/ggvegan")' | R --no-save
RUN conda clean --all
