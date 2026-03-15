-- Deploy: schemas/agent_db_app_public/tables/goals/columns/id/alterations/alt0000004257
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/id/column
-- requires: schemas/agent_db_app_public/tables/skills/columns/intent_trigger/column



ALTER TABLE "agent_db_app_public".goals 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

