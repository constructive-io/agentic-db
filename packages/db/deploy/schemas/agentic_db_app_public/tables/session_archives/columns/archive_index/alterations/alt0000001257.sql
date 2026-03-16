-- Deploy: schemas/agentic_db_app_public/tables/session_archives/columns/archive_index/alterations/alt0000001257
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/archive_index/column
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/session_id/alterations/alt0000001256


ALTER TABLE "agentic_db_app_public".session_archives 
  ALTER COLUMN archive_index SET NOT NULL;

