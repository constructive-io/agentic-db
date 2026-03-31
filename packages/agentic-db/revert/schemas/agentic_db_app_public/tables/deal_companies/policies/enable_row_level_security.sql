-- Revert: schemas/agentic_db_app_public/tables/deal_companies/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.deal_companies 
  DISABLE ROW LEVEL SECURITY;


