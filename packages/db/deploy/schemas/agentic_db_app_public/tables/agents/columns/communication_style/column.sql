-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/communication_style/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/backstory/column


ALTER TABLE "agentic_db_app_public".agents 
  ADD COLUMN communication_style text;

