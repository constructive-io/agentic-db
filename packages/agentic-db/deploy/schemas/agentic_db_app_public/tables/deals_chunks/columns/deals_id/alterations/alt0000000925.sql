-- Deploy: schemas/agentic_db_app_public/tables/deals_chunks/columns/deals_id/alterations/alt0000000925
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/columns/deals_id/column


ALTER TABLE "agentic_db_app_public".deals_chunks 
  ALTER COLUMN deals_id SET NOT NULL;

