-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/constraints/org_profiles_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table


ALTER TABLE "agentic_db_profiles_public".org_profiles 
  ADD CONSTRAINT org_profiles_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

