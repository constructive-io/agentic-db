-- Revert: schemas/agent_db_app_public/tables/messages/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".messages 
  DISABLE ROW LEVEL SECURITY;


