-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table


ALTER TABLE agent_db_profiles_public.org_profiles 
  ADD COLUMN entity_id uuid;

