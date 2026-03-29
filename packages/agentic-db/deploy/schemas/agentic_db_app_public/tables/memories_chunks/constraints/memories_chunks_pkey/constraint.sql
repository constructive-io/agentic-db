-- Deploy: schemas/agentic_db_app_public/tables/memories_chunks/constraints/memories_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.memories_chunks 
  ADD CONSTRAINT memories_chunks_pkey PRIMARY KEY (id);

