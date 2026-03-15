-- Deploy: schemas/agent_db_app_public/tables/habits/columns/best_streak/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/current_streak/alterations/alt0000004672


ALTER TABLE "agent_db_app_public".habits 
  ADD COLUMN best_streak int;

