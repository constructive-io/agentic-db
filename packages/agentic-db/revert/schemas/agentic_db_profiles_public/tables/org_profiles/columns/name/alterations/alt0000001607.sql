-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/name/alterations/alt0000001607


ALTER TABLE agentic_db_profiles_public.org_profiles 
  ALTER COLUMN name DROP NOT NULL;


