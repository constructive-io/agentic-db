-- Deploy: schemas/agent_db_app_public/tables/blueprints/columns/trigger_conditions/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/steps/column


ALTER TABLE "agent_db_app_public".blueprints 
  ADD COLUMN trigger_conditions text;

