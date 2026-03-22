-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/is_default/column


ALTER TABLE agentic_db_profiles_public.org_profiles 
  DROP COLUMN is_default RESTRICT;


