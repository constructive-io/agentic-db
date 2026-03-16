-- Deploy: schemas/agent_db_app_public/tables/documents/columns/last_accessed_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/active_count/alterations/alt0000002238


ALTER TABLE "agent_db_app_public".documents 
  ADD COLUMN last_accessed_at timestamptz;

