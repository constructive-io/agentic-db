-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/slug/column


ALTER TABLE agentic_db_profiles_public.org_profiles 
  DROP COLUMN slug RESTRICT;


