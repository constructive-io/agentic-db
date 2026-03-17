-- Deploy: schemas/agentic_db_app_public/tables/webhooks/columns/secret/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/event_type/alterations/alt0000001407


ALTER TABLE "agentic_db_app_public".webhooks 
  ADD COLUMN secret text;

