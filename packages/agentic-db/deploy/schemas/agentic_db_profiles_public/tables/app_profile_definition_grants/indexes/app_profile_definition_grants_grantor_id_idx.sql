-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/indexes/app_profile_definition_grants_grantor_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/grantor_id/column


CREATE INDEX app_profile_definition_grants_grantor_id_idx ON "agentic_db_profiles_public".app_profile_definition_grants USING BTREE ( grantor_id );

