-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".notes_chunks 
  DISABLE ROW LEVEL SECURITY;


