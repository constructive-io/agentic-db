-- Deploy: schemas/agentic_db_app_public/tables/deals_chunks/columns/created_at/alterations/alt0000000930
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".deals_chunks 
  ALTER COLUMN created_at SET DEFAULT now();

