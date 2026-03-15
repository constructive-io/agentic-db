-- Deploy: schemas/agent_db_app_public/tables/memories/columns/memory_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/content/alterations/alt0000001070


ALTER TABLE agent_db_app_public.memories 
  ADD COLUMN memory_type text;

