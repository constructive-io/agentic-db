-- Deploy: schemas/agent_db_app_public/tables/list_items/columns/list_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/list_items/table
-- requires: schemas/agent_db_app_public/tables/list_items/columns/updated_at/alterations/alt0000004701


ALTER TABLE "agent_db_app_public".list_items 
  ADD COLUMN list_id uuid;

