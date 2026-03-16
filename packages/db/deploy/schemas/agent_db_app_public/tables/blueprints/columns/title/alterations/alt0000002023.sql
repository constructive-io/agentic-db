-- Deploy: schemas/agent_db_app_public/tables/blueprints/columns/title/alterations/alt0000002023
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/title/column
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/updated_at/alterations/alt0000002022


ALTER TABLE "agent_db_app_public".blueprints 
  ALTER COLUMN title SET NOT NULL;

