-- Deploy: schemas/agentic_db_app_public/tables/deals_chunks/columns/content/alterations/alt0000000926
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".deals_chunks 
  ALTER COLUMN content SET NOT NULL;

