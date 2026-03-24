-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_grants/columns/grantor_id/alterations/alt0000000473
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_grants/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_grants/columns/grantor_id/column



ALTER TABLE "agentic_db_profiles_public".org_profile_grants 
    ALTER COLUMN grantor_id SET DEFAULT jwt_public.current_user_id();

