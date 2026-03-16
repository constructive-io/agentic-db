-- Deploy: schemas/agent_db_app_public/tables/workflows/columns/name/alterations/alt0000002065
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/name/column
-- requires: schemas/agent_db_app_public/tables/workflows/columns/updated_at/alterations/alt0000002064


ALTER TABLE "agent_db_app_public".workflows 
  ALTER COLUMN name SET NOT NULL;

