-- Deploy: schemas/agentic_db_app_public/tables/trip_chunks/constraints/trip_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.trip_chunks 
  ADD CONSTRAINT trip_chunks_pkey PRIMARY KEY (id);

