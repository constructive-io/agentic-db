-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/indexes/app_profile_definition_grants_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/table
-- requires: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/created_at/column


CREATE INDEX app_profile_definition_grants_created_at_idx ON agent_db_profiles_public.app_profile_definition_grants ( created_at );

