-- Revert: schemas/agent_db_app_public/tables/deal_documents/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.deal_documents 
  DISABLE ROW LEVEL SECURITY;


