-- Revert: schemas/agentic_db_app_public/tables/milestones/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".milestones 
  DISABLE ROW LEVEL SECURITY;


