FROM heartexlabs/label-studio:latest

COPY ./hotfix/cache_labels.py /label-studio/label_studio/data_manager/actions/

