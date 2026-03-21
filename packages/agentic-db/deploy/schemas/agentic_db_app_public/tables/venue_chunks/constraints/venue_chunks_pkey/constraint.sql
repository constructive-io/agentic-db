-- Deploy: schemas/agentic_db_app_public/tables/venue_chunks/constraints/venue_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/table
-- requires: schemas/agentic_db_app_public/tables/event_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.venue_chunks 
  ADD CONSTRAINT venue_chunks_pkey PRIMARY KEY (id);

