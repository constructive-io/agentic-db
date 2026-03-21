-- Deploy: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/entity_id/alterations/alt0000002337
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".session_archive_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

