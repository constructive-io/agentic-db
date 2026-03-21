-- Deploy: schemas/agentic_db_app_public/tables/venues/indexes/venues_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/events/indexes/events_embedding_text_bm25_idx


CREATE INDEX venues_embedding_hnsw_idx ON agentic_db_app_public.venues USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

