-- Deploy: schemas/agent_db_app_public/tables/memories/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/last_accessed_at/column


ALTER TABLE agent_db_app_public.memories 
  ADD COLUMN tags citext[];

