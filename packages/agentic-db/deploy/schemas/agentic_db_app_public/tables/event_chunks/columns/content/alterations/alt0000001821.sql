-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/columns/content/alterations/alt0000001821
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/event_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/event_chunks/columns/chunk_index/alterations/alt0000001820


ALTER TABLE "agentic_db_app_public".event_chunks 
  ALTER COLUMN content SET NOT NULL;

