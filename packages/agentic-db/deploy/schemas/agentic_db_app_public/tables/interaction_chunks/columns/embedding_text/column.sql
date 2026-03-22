-- Deploy: schemas/agentic_db_app_public/tables/interaction_chunks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/table
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/columns/content/alterations/alt0000001054


ALTER TABLE "agentic_db_app_public".interaction_chunks 
  ADD COLUMN embedding_text text;

