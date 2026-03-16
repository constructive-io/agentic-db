-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/is_read/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/source_type/column


ALTER TABLE "agentic_db_app_public".documents 
  ADD COLUMN is_read bool;

