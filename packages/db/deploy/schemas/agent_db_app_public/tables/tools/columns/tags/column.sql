-- Deploy: schemas/agent_db_app_public/tables/tools/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/is_active/alterations/alt0000002056


ALTER TABLE "agent_db_app_public".tools 
  ADD COLUMN tags citext[];

