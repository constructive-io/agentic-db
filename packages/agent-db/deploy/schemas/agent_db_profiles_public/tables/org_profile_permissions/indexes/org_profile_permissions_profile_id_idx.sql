-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_permissions/indexes/org_profile_permissions_profile_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/profile_id/column


CREATE INDEX org_profile_permissions_profile_id_idx ON "agent_db_profiles_public".org_profile_permissions USING BTREE ( profile_id );

