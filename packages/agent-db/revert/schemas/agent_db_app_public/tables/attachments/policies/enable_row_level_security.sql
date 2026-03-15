-- Revert: schemas/agent_db_app_public/tables/attachments/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".attachments 
  DISABLE ROW LEVEL SECURITY;


