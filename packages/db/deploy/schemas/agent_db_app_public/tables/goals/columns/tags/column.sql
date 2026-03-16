-- Deploy: schemas/agent_db_app_public/tables/goals/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/progress_pct/alterations/alt0000001938


ALTER TABLE "agent_db_app_public".goals 
  ADD COLUMN tags citext[];

