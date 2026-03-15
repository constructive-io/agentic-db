-- Deploy: schemas/agent_db_app_public/tables/documents/columns/saved_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/is_read/alterations/alt0000001419


ALTER TABLE agent_db_app_public.documents 
  ADD COLUMN saved_at timestamptz;

