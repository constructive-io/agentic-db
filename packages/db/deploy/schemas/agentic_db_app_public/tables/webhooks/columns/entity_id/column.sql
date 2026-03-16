-- Deploy: schemas/agentic_db_app_public/tables/webhooks/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/last_synced_at/column


ALTER TABLE "agentic_db_app_public".webhooks 
  ADD COLUMN entity_id uuid;

