-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/name/alterations/alt0000000438


ALTER TABLE agent_db_profiles_public.org_profiles 
  ALTER COLUMN name DROP NOT NULL;


