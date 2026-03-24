-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_grants/constraints/app_profile_grants_membership_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_grants/table


ALTER TABLE "agentic_db_profiles_public".app_profile_grants 
  ADD CONSTRAINT app_profile_grants_membership_id_fkey 
    FOREIGN KEY(membership_id) 
    REFERENCES "agentic_db_memberships_public".app_memberships (id) 
    ON DELETE CASCADE;

