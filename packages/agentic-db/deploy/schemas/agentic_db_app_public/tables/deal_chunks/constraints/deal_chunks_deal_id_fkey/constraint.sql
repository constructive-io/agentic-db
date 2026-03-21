-- Deploy: schemas/agentic_db_app_public/tables/deal_chunks/constraints/deal_chunks_deal_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/company_chunks/indexes/company_chunks_company_id_idx


ALTER TABLE "agentic_db_app_public".deal_chunks 
  ADD CONSTRAINT deal_chunks_deal_id_fkey 
    FOREIGN KEY(deal_id) 
    REFERENCES "agentic_db_app_public".deals (id) 
    ON DELETE CASCADE;

