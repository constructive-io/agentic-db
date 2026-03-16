-- Deploy: schemas/agent_db_app_public/tables/workflows/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/is_active/alterations/alt0000002066


ALTER TABLE "agent_db_app_public".workflows 
  ADD COLUMN tags citext[];

