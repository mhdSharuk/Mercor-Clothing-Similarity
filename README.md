# Mercor-Clothing-Similarity

## Overview of the project
Aim of the project is for a machine learning model that is able to recieve a text that describes a clothing product description and retrieves the URL of matching products.

## Flowchart of development
![image](https://github.com/mhdSharuk/Mercor-Clothing-Similarity/assets/43241528/b0b259a8-2bf2-4631-9f5c-8048151a40fd)

##  Instruction For Deployement
* [1-mercor-data-extraction-and-preprocessing.ipynb](https://github.com/mhdSharuk/Mercor-Clothing-Similarity/blob/main/1-mercor-data-extraction-and-preprocessing.ipynb) file to be used in kaggle notebooks by adding [myntra](https://www.kaggle.com/datasets/ashishjangra27/myntra-168k-products) dataset
* [2-mercor-sentence-similarity-text-embeddings.ipynb](https://github.com/mhdSharuk/Mercor-Clothing-Similarity/blob/main/2-mercor-sentence-similarity-text-embeddings.ipynb) file can be used in Kaggle notebooks or Google Colab Notebook, which produces the text-embeddings for your products that you fetched in the previous step.
* [3-mercor-push-data-to-gc-bigquery.ipynb](https://github.com/mhdSharuk/Mercor-Clothing-Similarity/blob/main/3-mercor-push-data-to-gcp-bigquery.ipynb) file is used to push the text embeddings data to GCP BigQuery. Need to provide a service account JSON file to authorize the BigQuery Jobs.
* [4-mercor-search.ipynb](https://github.com/mhdSharuk/Mercor-Clothing-Similarity/blob/main/4-mercor-search.ipynb) used to provide the text description of the product and the number of results needed. Need to open this in Google Colab and upload the service account JSON to the current session.

## NB: 
Since the requirement was to use Google Cloud Function or Google Cloud Run for providing the result.
To use these products, I should provide a billing account.

Unfortunately my billing account could not be verfied due to unknown reasons.

And due to that, I have created an Interactive Python Notebook where we can achieve the similar result that can be obtained through Google Cloud Run or Google Cloud Functions.

Proof is attached below.

![image](https://github.com/mhdSharuk/Mercor-Clothing-Similarity/assets/43241528/fada3a6a-e1e3-4aad-96e8-db168055e0c0)
