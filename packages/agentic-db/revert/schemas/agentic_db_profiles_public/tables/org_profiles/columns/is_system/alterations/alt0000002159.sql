-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/is_system/alterations/alt0000002159


ALTER TABLE agentic_db_profiles_public.org_profiles 
  ALTER COLUMN is_system DROP NOT NULL;


