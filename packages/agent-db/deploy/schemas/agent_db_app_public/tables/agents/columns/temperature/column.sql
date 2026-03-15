-- Deploy: schemas/agent_db_app_public/tables/agents/columns/temperature/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/fallback_models/column


ALTER TABLE "agent_db_app_public".agents 
  ADD COLUMN temperature numeric;

