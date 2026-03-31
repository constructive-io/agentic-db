-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".memories_chunks 
  DISABLE ROW LEVEL SECURITY;


