-- Deploy: schemas/agent_db_app_public/tables/habits/columns/current_streak/alterations/alt0000004720
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/target_count/column
-- requires: schemas/agent_db_app_public/tables/habits/columns/current_streak/column



ALTER TABLE "agent_db_app_public".habits 
    ALTER COLUMN current_streak SET DEFAULT 0;

