-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/is_default/alterations/alt0000009941


ALTER TABLE agentic_db_profiles_public.org_profiles 
  ALTER COLUMN is_default DROP NOT NULL;


