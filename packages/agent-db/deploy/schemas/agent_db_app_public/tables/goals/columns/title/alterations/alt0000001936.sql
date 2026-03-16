-- Deploy: schemas/agent_db_app_public/tables/goals/columns/title/alterations/alt0000001936
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/title/column
-- requires: schemas/agent_db_app_public/tables/goals/columns/updated_at/alterations/alt0000001935


ALTER TABLE "agent_db_app_public".goals 
  ALTER COLUMN title SET NOT NULL;

