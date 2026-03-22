-- Deploy: schemas/agentic_db_app_public/tables/place_chunks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/place_chunks/table
-- requires: schemas/agentic_db_app_public/tables/place_chunks/columns/content/alterations/alt0000006322


ALTER TABLE agentic_db_app_public.place_chunks 
  ADD COLUMN embedding_text text;

