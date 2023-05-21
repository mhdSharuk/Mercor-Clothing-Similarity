CREATE TEMP FUNCTION
  cosine_similarity(input_emb STRING, search_vectors STRING)
  RETURNS FLOAT64
  LANGUAGE js
  AS
"""
    function cosine_similariy_js(vector1, vector2){
      vector1 = JSON.parse(vector1)
      vector2 = JSON.parse(vector2)

      var dotproduct = 0;
      var mA=0;
      var mB=0;
      
      for(i = 0; i < vector1.length; i++){
          dotproduct += (vector1[i] * vector2[i]);
          mA += (vector1[i] * vector1[i]);
          mB += (vector2[i] * vector2[i]);
      }
      
      mA = Math.sqrt(mA);
      mB = Math.sqrt(mB);
      
      var similarity = (dotproduct)/((mA)*(mB))
      return similarity;
    }

    return cosine_similariy_js(input_emb, search_vectors)
  """;
SELECT 
    cosine_similarity(input.string_field_1, dataset.embeddings) as similarity,
    dataset.category,
    dataset.gender,
    dataset.product_url as product_link
  FROM 
    `mercor.clothing_description_embeddings_list` as dataset,
    `mercor.clothing_description_search` as input

  ORDER BY similarity DESC
  LIMIT 10
