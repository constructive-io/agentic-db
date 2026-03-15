-- Deploy: schemas/agent_db_app_public/tables/habits/columns/category/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/best_streak/alterations/alt0000004673


ALTER TABLE "agent_db_app_public".habits 
  ADD COLUMN category text;

