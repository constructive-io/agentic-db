-- Deploy: schemas/agentic_db_app_public/tables/trips/constraints/trips_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.trips 
  ADD CONSTRAINT trips_pkey PRIMARY KEY (id);

