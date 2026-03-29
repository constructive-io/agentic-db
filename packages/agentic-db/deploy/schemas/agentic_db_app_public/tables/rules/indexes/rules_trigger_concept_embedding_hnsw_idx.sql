-- Deploy: schemas/agentic_db_app_public/tables/rules/indexes/rules_trigger_concept_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/trigger_concept_embedding/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


CREATE INDEX rules_trigger_concept_embedding_hnsw_idx ON agentic_db_app_public.rules USING hnsw ( trigger_concept_embedding vector_cosine_ops );

