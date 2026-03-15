-- Deploy: schemas/agent_db_app_public/tables/memories/columns/source/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/verified/alterations/alt0000001071


ALTER TABLE agent_db_app_public.memories 
  ADD COLUMN source text;

