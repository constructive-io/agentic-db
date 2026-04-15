-- Deploy: schemas/agentic_db_app_public/tables/deal_companies/alterations/alt0000001211
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_companies/table


ALTER TABLE "agentic_db_app_public".deal_companies 
  DISABLE ROW LEVEL SECURITY;

