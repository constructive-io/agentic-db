-- Revert: schemas/agent_db_app_public/tables/documents/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".documents 
  DISABLE ROW LEVEL SECURITY;


