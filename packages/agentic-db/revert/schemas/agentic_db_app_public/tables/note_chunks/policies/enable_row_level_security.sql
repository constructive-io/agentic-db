-- Revert: schemas/agentic_db_app_public/tables/note_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".note_chunks 
  DISABLE ROW LEVEL SECURITY;


