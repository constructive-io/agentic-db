-- Revert: schemas/agent_db_app_public/tables/session_archives/columns/archive_index/column


ALTER TABLE "agent_db_app_public".session_archives 
  DROP COLUMN archive_index RESTRICT;


