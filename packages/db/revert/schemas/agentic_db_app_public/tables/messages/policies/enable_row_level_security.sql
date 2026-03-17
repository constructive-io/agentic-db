-- Revert: schemas/agentic_db_app_public/tables/messages/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".messages 
  DISABLE ROW LEVEL SECURITY;


