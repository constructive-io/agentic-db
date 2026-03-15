-- Deploy: schemas/agent_db_app_public/tables/memories/columns/importance/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/agent_id/column


ALTER TABLE agent_db_app_public.memories 
  ADD COLUMN importance int;

