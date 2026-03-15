-- Deploy: schemas/agent_db_app_public/tables/memories/columns/last_accessed_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/active_count/alterations/alt0000004242


ALTER TABLE "agent_db_app_public".memories 
  ADD COLUMN last_accessed_at timestamptz;

