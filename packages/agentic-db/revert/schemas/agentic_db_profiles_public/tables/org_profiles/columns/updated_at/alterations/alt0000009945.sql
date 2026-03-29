-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/updated_at/alterations/alt0000009945


ALTER TABLE agentic_db_profiles_public.org_profiles 
  ALTER COLUMN updated_at DROP DEFAULT;


