-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/slug/alterations/alt0000002972


ALTER TABLE agentic_db_profiles_public.org_profiles 
  ALTER COLUMN slug DROP NOT NULL;


