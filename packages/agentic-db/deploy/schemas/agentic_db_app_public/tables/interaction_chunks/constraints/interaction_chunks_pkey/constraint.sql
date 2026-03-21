-- Deploy: schemas/agentic_db_app_public/tables/interaction_chunks/constraints/interaction_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/table
-- requires: schemas/agentic_db_app_public/tables/note_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.interaction_chunks 
  ADD CONSTRAINT interaction_chunks_pkey PRIMARY KEY (id);

