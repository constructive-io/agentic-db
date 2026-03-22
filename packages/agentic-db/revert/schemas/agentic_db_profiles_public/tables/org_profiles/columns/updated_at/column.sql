-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/updated_at/column


ALTER TABLE agentic_db_profiles_public.org_profiles 
  DROP COLUMN updated_at RESTRICT;


