-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_chunks/constraints/calendar_event_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/message_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.calendar_event_chunks 
  ADD CONSTRAINT calendar_event_chunks_pkey PRIMARY KEY (id);

