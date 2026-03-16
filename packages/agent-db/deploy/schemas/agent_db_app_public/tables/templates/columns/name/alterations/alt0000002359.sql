-- Deploy: schemas/agent_db_app_public/tables/templates/columns/name/alterations/alt0000002359
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/name/column
-- requires: schemas/agent_db_app_public/tables/templates/columns/updated_at/alterations/alt0000002358


ALTER TABLE "agent_db_app_public".templates 
  ALTER COLUMN name SET NOT NULL;

