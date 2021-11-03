FROM jupyter/scipy-notebook:lab-3.1.17

RUN mamba install --yes \
    folium \
    geopandas \
    jq \
    mapclassify \
    numpy \
    owslib \
    pyproj \
    rtree \
    shapely \
    && mamba clean --all -f -y

RUN fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
