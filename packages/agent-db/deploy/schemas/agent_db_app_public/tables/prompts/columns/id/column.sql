-- Deploy: schemas/agent_db_app_public/tables/prompts/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/embedding/column


ALTER TABLE "agent_db_app_public".prompts 
  ADD COLUMN id uuid;

