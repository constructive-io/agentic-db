-- Revert: schemas/agentic_db_app_public/tables/deal_contacts/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.deal_contacts 
  DISABLE ROW LEVEL SECURITY;


