FROM rocker/rstudio:4.5.1

LABEL org.opencontainers.image.authors="Emir Turkes emir.turkes@eturkes.com"

RUN Rscript -e "install.packages('conflicted')" \
        -e "install.packages('rmarkdown')" \
        -e "install.packages('stringr')" \
        -e "install.packages('qs')" \
        -e "install.packages('DT')" \
        -e "install.packages('scales')" \
        -e "install.packages('BiocManager')" \
        -e "BiocManager::install('edgeR')" \
        -e "BiocManager::install('ComplexHeatmap')" \
    && rm -Rf /tmp/downloaded_packages/ \
        /tmp/*.rds
