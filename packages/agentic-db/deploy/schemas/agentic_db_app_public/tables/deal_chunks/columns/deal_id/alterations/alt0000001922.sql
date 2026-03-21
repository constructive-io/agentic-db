-- Deploy: schemas/agentic_db_app_public/tables/deal_chunks/columns/deal_id/alterations/alt0000001922
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/deal_id/column
-- requires: schemas/agentic_db_app_public/tables/company_chunks/indexes/company_chunks_company_id_idx


ALTER TABLE "agentic_db_app_public".deal_chunks 
  ALTER COLUMN deal_id SET NOT NULL;

