-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.autonomy_records 
  DISABLE ROW LEVEL SECURITY;


