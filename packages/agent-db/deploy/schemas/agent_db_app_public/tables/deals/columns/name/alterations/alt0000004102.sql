-- Deploy: schemas/agent_db_app_public/tables/deals/columns/name/alterations/alt0000004102
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/name/column
-- requires: schemas/agent_db_app_public/tables/deals/columns/updated_at/alterations/alt0000004101


ALTER TABLE "agent_db_app_public".deals 
  ALTER COLUMN name SET NOT NULL;

