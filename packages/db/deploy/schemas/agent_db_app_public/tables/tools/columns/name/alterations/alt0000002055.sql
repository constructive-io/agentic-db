-- Deploy: schemas/agent_db_app_public/tables/tools/columns/name/alterations/alt0000002055
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/name/column
-- requires: schemas/agent_db_app_public/tables/tools/columns/updated_at/alterations/alt0000002054


ALTER TABLE "agent_db_app_public".tools 
  ALTER COLUMN name SET NOT NULL;

