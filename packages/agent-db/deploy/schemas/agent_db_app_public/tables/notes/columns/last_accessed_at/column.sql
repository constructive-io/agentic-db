-- Deploy: schemas/agent_db_app_public/tables/notes/columns/last_accessed_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/active_count/alterations/alt0000000916


ALTER TABLE agent_db_app_public.notes 
  ADD COLUMN last_accessed_at timestamptz;

