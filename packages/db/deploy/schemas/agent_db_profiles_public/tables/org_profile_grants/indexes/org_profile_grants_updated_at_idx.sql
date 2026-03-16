-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/indexes/org_profile_grants_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/updated_at/column


CREATE INDEX org_profile_grants_updated_at_idx ON "agent_db_profiles_public".org_profile_grants ( updated_at );

