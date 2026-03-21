-- Deploy: schemas/agentic_db_app_public/tables/chunks/columns/content/alterations/alt0000002428
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chunks/table
-- requires: schemas/agentic_db_app_public/tables/chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/chunks/columns/repository_id/column


ALTER TABLE "agentic_db_app_public".chunks 
  ALTER COLUMN content SET NOT NULL;

