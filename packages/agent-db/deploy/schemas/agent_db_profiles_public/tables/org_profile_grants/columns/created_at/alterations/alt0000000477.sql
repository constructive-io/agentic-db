-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/created_at/alterations/alt0000000477
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/created_at/column


ALTER TABLE agent_db_profiles_public.org_profile_grants 
  ALTER COLUMN created_at SET DEFAULT now();

