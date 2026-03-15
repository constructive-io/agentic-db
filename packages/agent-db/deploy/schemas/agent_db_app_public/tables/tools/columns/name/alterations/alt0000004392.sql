-- Deploy: schemas/agent_db_app_public/tables/tools/columns/name/alterations/alt0000004392
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/name/column
-- requires: schemas/agent_db_app_public/tables/tools/columns/updated_at/alterations/alt0000004391


ALTER TABLE "agent_db_app_public".tools 
  ALTER COLUMN name SET NOT NULL;

