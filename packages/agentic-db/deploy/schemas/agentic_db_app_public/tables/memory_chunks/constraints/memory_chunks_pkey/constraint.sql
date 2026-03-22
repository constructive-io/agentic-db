-- Deploy: schemas/agentic_db_app_public/tables/memory_chunks/constraints/memory_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/triggers/hiking_trail_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.memory_chunks 
  ADD CONSTRAINT memory_chunks_pkey PRIMARY KEY (id);

