-- Deploy: schemas/agent_db_app_public/tables/prompts/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/is_active/alterations/alt0000001950


ALTER TABLE "agent_db_app_public".prompts 
  ADD COLUMN tags citext[];

