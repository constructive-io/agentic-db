-- Deploy: schemas/agentic_db_app_public/tables/skills/indexes/skills_intent_trigger_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/intent_trigger_embedding/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


CREATE INDEX skills_intent_trigger_embedding_hnsw_idx ON agentic_db_app_public.skills USING hnsw ( intent_trigger_embedding vector_cosine_ops );

