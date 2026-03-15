-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/indexes/org_profile_grants_membership_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/membership_id/column


CREATE INDEX org_profile_grants_membership_id_idx ON "agent_db_profiles_public".org_profile_grants USING BTREE ( membership_id );

