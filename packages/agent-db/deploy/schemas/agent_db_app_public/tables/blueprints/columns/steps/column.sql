-- Deploy: schemas/agent_db_app_public/tables/blueprints/columns/steps/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/title/alterations/alt0000004360


ALTER TABLE "agent_db_app_public".blueprints 
  ADD COLUMN steps jsonb;

