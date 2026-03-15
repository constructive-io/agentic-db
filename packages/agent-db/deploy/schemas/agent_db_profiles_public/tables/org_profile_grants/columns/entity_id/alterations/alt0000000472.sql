-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/entity_id/alterations/alt0000000472
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/entity_id/column


COMMENT ON COLUMN agent_db_profiles_public.org_profile_grants.entity_id IS E'The entity (org or group) scope for this profile grant';

