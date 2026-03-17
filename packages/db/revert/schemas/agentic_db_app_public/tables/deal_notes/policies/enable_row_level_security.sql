-- Revert: schemas/agentic_db_app_public/tables/deal_notes/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".deal_notes 
  DISABLE ROW LEVEL SECURITY;


