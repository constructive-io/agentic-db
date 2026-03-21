-- Deploy: schemas/agentic_db_app_public/tables/note_chunks/alterations/alt0000001832
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/note_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".note_chunks 
  DISABLE ROW LEVEL SECURITY;

