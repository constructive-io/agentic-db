-- Deploy: schemas/agent_db_app_public/tables/habits/columns/current_streak/alterations/alt0000002320
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/target_count/column
-- requires: schemas/agent_db_app_public/tables/habits/columns/current_streak/column



ALTER TABLE "agent_db_app_public".habits 
    ALTER COLUMN current_streak SET DEFAULT 0;

