-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/id/alterations/alt0000002968


ALTER TABLE agentic_db_profiles_public.org_profiles 
  ALTER COLUMN id DROP NOT NULL;


