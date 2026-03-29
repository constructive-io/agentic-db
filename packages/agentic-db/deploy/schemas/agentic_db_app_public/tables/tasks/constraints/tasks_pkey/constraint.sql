-- Deploy: schemas/agentic_db_app_public/tables/tasks/constraints/tasks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.tasks 
  ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);

