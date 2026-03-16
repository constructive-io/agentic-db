-- Deploy: schemas/agent_db_app_public/tables/deals/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/notes/column


ALTER TABLE "agent_db_app_public".deals 
  ADD COLUMN tags citext[];

