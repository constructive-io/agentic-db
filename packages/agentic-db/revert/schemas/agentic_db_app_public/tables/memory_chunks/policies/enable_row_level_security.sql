-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".memory_chunks 
  DISABLE ROW LEVEL SECURITY;


