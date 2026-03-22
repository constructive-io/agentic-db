-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/updated_at/alterations/alt0000001622


ALTER TABLE agentic_db_profiles_public.org_profiles 
  ALTER COLUMN updated_at DROP DEFAULT;


