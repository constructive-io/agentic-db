-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table


ALTER TABLE "agent_db_profiles_public".org_profiles 
  ADD COLUMN name citext;

