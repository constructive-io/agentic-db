-- Deploy: schemas/agent_db_app_public/tables/memories/columns/agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/memory_category/column


ALTER TABLE "agent_db_app_public".memories 
  ADD COLUMN agent_id uuid;

