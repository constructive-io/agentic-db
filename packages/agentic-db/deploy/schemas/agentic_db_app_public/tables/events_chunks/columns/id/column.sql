-- Deploy: schemas/agentic_db_app_public/tables/events_chunks/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events_chunks/table


ALTER TABLE "agentic_db_app_public".events_chunks 
  ADD COLUMN id uuid;

