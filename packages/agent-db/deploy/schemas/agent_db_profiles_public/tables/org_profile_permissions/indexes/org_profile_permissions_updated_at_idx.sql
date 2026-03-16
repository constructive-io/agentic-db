-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_permissions/indexes/org_profile_permissions_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/updated_at/column


CREATE INDEX org_profile_permissions_updated_at_idx ON "agent_db_profiles_public".org_profile_permissions ( updated_at );

