-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/entity_id/alterations/alt0000002564
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/message_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".calendar_event_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

