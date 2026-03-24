-- Revert: schemas/agentic_db_app_public/tables/company_memories/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".company_memories 
  DISABLE ROW LEVEL SECURITY;


