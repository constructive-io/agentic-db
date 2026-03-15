-- Deploy: schemas/agent_db_app_public/tables/blueprints/columns/title/alterations/alt0000004408
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/title/column
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/updated_at/alterations/alt0000004407


ALTER TABLE "agent_db_app_public".blueprints 
  ALTER COLUMN title SET NOT NULL;

