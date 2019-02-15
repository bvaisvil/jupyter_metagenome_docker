from jupyter/datascience-notebook

RUN conda update -n base conda
RUN conda install -c bioconda bioconductor-biocinstaller
RUN conda install -c bioconda bioconductor-metagenomeseq
RUN conda install -c bioconda bioconductor-phyloseq
RUN conda install -c bioconda bioconductor-deseq2 
RUN conda install -c bioconda bioconductor-biomformat 
RUN conda install -c bioconda bioconductor-genomeinfodb 
RUN conda install -c bioconda bioconductor-iranges 

COPY install.R /app/.
RUN Rscript install.R