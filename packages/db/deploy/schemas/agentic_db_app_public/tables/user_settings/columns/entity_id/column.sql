-- Deploy: schemas/agentic_db_app_public/tables/user_settings/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/user_settings/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/is_active/alterations/alt0000001408


ALTER TABLE "agentic_db_app_public".user_settings 
  ADD COLUMN entity_id uuid;

