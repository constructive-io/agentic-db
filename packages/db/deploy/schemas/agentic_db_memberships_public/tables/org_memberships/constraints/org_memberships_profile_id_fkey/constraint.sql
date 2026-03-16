-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/constraints/org_memberships_profile_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table


ALTER TABLE "agentic_db_memberships_public".org_memberships 
  ADD CONSTRAINT org_memberships_profile_id_fkey 
    FOREIGN KEY(profile_id) 
    REFERENCES "agentic_db_profiles_public".org_profiles (id) 
    ON DELETE CASCADE;

