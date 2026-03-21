-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/constraints/event_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.event_chunks 
  ADD CONSTRAINT event_chunks_pkey PRIMARY KEY (id);

