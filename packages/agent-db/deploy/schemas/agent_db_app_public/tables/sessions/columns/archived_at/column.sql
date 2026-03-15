-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/archived_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/compression_count/alterations/alt0000001147


ALTER TABLE agent_db_app_public.sessions 
  ADD COLUMN archived_at timestamptz;

