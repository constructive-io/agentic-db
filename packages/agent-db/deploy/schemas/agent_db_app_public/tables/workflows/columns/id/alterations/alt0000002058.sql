-- Deploy: schemas/agent_db_app_public/tables/workflows/columns/id/alterations/alt0000002058
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/id/column
-- requires: schemas/agent_db_app_public/tables/tools/columns/embedding/column


ALTER TABLE "agent_db_app_public".workflows 
  ALTER COLUMN id SET NOT NULL;

