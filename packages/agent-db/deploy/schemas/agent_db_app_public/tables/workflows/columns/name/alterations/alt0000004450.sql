-- Deploy: schemas/agent_db_app_public/tables/workflows/columns/name/alterations/alt0000004450
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/name/column
-- requires: schemas/agent_db_app_public/tables/workflows/columns/updated_at/alterations/alt0000004449


ALTER TABLE "agent_db_app_public".workflows 
  ALTER COLUMN name SET NOT NULL;

