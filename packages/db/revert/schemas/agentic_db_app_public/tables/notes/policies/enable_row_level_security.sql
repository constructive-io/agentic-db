-- Revert: schemas/agentic_db_app_public/tables/notes/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".notes 
  DISABLE ROW LEVEL SECURITY;


