-- Deploy: schemas/agentic_db_app_public/tables/recipe_chunks/indexes/recipe_chunks_chunk_index_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/table
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/indexes/recipe_chunks_embedding_text_bm25_idx


CREATE INDEX recipe_chunks_chunk_index_idx ON "agentic_db_app_public".recipe_chunks USING BTREE ( chunk_index );

