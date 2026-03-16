-- Revert: schemas/agent_db_app_public/tables/company_memories/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".company_memories 
  DISABLE ROW LEVEL SECURITY;


