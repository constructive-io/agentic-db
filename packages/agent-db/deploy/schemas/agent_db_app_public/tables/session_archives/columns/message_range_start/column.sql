-- Deploy: schemas/agent_db_app_public/tables/session_archives/columns/message_range_start/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/summary/alterations/alt0000002110


ALTER TABLE "agent_db_app_public".session_archives 
  ADD COLUMN message_range_start int;

