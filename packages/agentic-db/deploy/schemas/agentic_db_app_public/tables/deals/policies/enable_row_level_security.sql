-- Deploy: schemas/agentic_db_app_public/tables/deals/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/companies/alterations/alt0000005559


ALTER TABLE agentic_db_app_public.deals 
  ENABLE ROW LEVEL SECURITY;

