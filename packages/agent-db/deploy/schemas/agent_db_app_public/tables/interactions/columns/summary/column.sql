-- Deploy: schemas/agent_db_app_public/tables/interactions/columns/summary/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/occurred_at/alterations/alt0000001779


ALTER TABLE "agent_db_app_public".interactions 
  ADD COLUMN summary text;

