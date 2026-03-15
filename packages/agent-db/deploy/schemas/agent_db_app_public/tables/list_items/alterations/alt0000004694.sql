-- Deploy: schemas/agent_db_app_public/tables/list_items/alterations/alt0000004694
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/list_items/table
-- requires: schemas/agent_db_app_public/tables/lists/columns/embedding/column


ALTER TABLE "agent_db_app_public".list_items 
  DISABLE ROW LEVEL SECURITY;

