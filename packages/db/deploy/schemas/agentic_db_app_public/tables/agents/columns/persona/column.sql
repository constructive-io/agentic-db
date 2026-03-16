-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/persona/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/status/alterations/alt0000001118


ALTER TABLE "agentic_db_app_public".agents 
  ADD COLUMN persona text;

