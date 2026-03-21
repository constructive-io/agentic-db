-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/columns/entity_id/alterations/alt0000002469
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/columns/last_synced_at/column


ALTER TABLE "agentic_db_app_public".calendar_events 
  ALTER COLUMN entity_id SET NOT NULL;

