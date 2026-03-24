-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_grants/constraints/org_profile_grants_membership_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_grants/table


ALTER TABLE "agentic_db_profiles_public".org_profile_grants 
  ADD CONSTRAINT org_profile_grants_membership_id_fkey 
    FOREIGN KEY(membership_id) 
    REFERENCES "agentic_db_memberships_public".org_memberships (id) 
    ON DELETE CASCADE;

