-- Deploy: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/content/alterations/alt0000001738


ALTER TABLE "agentic_db_app_public".hiking_trail_chunks 
  ADD COLUMN embedding_text text;

