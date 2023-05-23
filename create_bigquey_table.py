from google.cloud import bigquery
import os
os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = 'mercor-387315-804b5f512963.json'

table_id = 'mercor-387315.mercor.clothing_description_search'

schema = [
    bigquery.SchemaField("embeddings", "STRING"),
    bigquery.SchemaField("category", "STRING"),
    bigquery.SchemaField("product_url", "STRING"),
    bigquery.SchemaField("gender", "STRING"),
]

table = bigquery.Table(table_id, schema=schema)
table = client.create_table(table)  # Make an API request.
print(
    "Created table {}.{}.{}".format(table.project, table.dataset_id, table.table_id)
)