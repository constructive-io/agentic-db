-- Deploy: schemas/agent_db_app_public/tables/session_archives/columns/summary/alterations/alt0000002110
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/summary/column
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/archive_index/alterations/alt0000002109


ALTER TABLE "agent_db_app_public".session_archives 
  ALTER COLUMN summary SET NOT NULL;

