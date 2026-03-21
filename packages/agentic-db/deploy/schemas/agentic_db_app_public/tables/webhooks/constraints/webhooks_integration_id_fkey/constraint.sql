-- Deploy: schemas/agentic_db_app_public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/indexes/calendar_events_calendar_account_id_idx


ALTER TABLE "agentic_db_app_public".webhooks 
  ADD CONSTRAINT webhooks_integration_id_fkey 
    FOREIGN KEY(integration_id) 
    REFERENCES "agentic_db_app_public".integrations (id) 
    ON DELETE CASCADE;

