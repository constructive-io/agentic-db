-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/id/alterations/alt0000004475
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/tags/column


ALTER TABLE agentic_db_app_public.documents 
  ALTER COLUMN id SET NOT NULL;

