-- Deploy: schemas/agentic_db_app_public/tables/note_chunks/columns/content/alterations/alt0000001041
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/note_chunks/table
-- requires: schemas/agentic_db_app_public/tables/note_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/note_chunks/columns/chunk_index/alterations/alt0000001040


ALTER TABLE "agentic_db_app_public".note_chunks 
  ALTER COLUMN content SET NOT NULL;

