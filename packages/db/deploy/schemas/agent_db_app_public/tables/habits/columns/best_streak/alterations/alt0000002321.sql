-- Deploy: schemas/agent_db_app_public/tables/habits/columns/best_streak/alterations/alt0000002321
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/best_streak/column
-- requires: schemas/agent_db_app_public/tables/habits/columns/current_streak/alterations/alt0000002320



ALTER TABLE "agent_db_app_public".habits 
    ALTER COLUMN best_streak SET DEFAULT 0;

