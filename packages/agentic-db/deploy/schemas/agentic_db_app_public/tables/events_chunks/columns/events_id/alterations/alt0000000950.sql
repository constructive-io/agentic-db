-- Deploy: schemas/agentic_db_app_public/tables/events_chunks/columns/events_id/alterations/alt0000000950
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events_chunks/table
-- requires: schemas/agentic_db_app_public/tables/events_chunks/columns/events_id/column


ALTER TABLE "agentic_db_app_public".events_chunks 
  ALTER COLUMN events_id SET NOT NULL;

