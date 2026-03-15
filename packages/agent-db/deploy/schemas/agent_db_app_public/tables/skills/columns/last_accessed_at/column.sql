-- Deploy: schemas/agent_db_app_public/tables/skills/columns/last_accessed_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/active_count/alterations/alt0000004254


ALTER TABLE "agent_db_app_public".skills 
  ADD COLUMN last_accessed_at timestamptz;

