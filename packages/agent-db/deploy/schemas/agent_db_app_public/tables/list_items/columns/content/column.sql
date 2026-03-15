-- Deploy: schemas/agent_db_app_public/tables/list_items/columns/content/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/list_items/table
-- requires: schemas/agent_db_app_public/tables/list_items/columns/list_id/alterations/alt0000004750


ALTER TABLE "agent_db_app_public".list_items 
  ADD COLUMN content text;

