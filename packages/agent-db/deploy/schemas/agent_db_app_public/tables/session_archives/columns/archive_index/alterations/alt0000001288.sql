-- Deploy: schemas/agent_db_app_public/tables/session_archives/columns/archive_index/alterations/alt0000001288
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/archive_index/column
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/session_id/alterations/alt0000001287


ALTER TABLE agent_db_app_public.session_archives 
  ALTER COLUMN archive_index SET NOT NULL;

