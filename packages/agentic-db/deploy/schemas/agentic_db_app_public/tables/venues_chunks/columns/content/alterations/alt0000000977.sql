-- Deploy: schemas/agentic_db_app_public/tables/venues_chunks/columns/content/alterations/alt0000000977
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".venues_chunks 
  ALTER COLUMN content SET NOT NULL;

