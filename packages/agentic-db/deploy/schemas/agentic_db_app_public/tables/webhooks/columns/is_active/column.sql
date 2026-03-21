-- Deploy: schemas/agentic_db_app_public/tables/webhooks/columns/is_active/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/secret/column


ALTER TABLE "agentic_db_app_public".webhooks 
  ADD COLUMN is_active bool;

