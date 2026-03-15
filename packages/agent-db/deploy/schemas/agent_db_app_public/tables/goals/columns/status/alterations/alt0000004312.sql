-- Deploy: schemas/agent_db_app_public/tables/goals/columns/status/alterations/alt0000004312
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/status/column
-- requires: schemas/agent_db_app_public/tables/goals/columns/target_date/column



ALTER TABLE "agent_db_app_public".goals 
    ALTER COLUMN status SET DEFAULT 'active';

