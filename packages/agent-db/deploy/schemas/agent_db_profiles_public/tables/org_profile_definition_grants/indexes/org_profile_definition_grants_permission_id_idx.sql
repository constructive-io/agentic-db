-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/indexes/org_profile_definition_grants_permission_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/permission_id/column


CREATE INDEX org_profile_definition_grants_permission_id_idx ON agent_db_profiles_public.org_profile_definition_grants USING BTREE ( permission_id );

