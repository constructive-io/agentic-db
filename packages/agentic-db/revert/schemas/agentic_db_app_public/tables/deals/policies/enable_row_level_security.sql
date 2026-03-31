-- Revert: schemas/agentic_db_app_public/tables/deals/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.deals 
  DISABLE ROW LEVEL SECURITY;


