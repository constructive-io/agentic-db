-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/mood/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/temperature/column


ALTER TABLE "agentic_db_app_public".agents 
  ADD COLUMN mood text;

