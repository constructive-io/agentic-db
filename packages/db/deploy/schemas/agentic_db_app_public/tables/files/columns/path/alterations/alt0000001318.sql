-- Deploy: schemas/agentic_db_app_public/tables/files/columns/path/alterations/alt0000001318
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/files/table
-- requires: schemas/agentic_db_app_public/tables/files/columns/path/column
-- requires: schemas/agentic_db_app_public/tables/files/columns/repository_id/column


ALTER TABLE "agentic_db_app_public".files 
  ALTER COLUMN path SET NOT NULL;

