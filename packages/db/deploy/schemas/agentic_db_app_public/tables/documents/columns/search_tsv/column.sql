-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/search_tsv/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/embedding/column


ALTER TABLE "agentic_db_app_public".documents 
  ADD COLUMN search_tsv tsvector;

