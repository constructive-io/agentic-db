-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/id/column


ALTER TABLE agentic_db_profiles_public.org_profiles 
  DROP COLUMN id RESTRICT;


