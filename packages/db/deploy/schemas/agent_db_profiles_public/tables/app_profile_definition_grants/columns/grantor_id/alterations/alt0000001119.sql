-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/grantor_id/alterations/alt0000001119
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/table
-- requires: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/grantor_id/column



ALTER TABLE "agent_db_profiles_public".app_profile_definition_grants 
    ALTER COLUMN grantor_id SET DEFAULT jwt_public.current_user_id();

