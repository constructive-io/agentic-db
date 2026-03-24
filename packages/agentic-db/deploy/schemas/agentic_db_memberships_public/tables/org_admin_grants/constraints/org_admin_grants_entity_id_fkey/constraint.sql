-- Deploy: schemas/agentic_db_memberships_public/tables/org_admin_grants/constraints/org_admin_grants_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_memberships_public/tables/org_admin_grants/table


ALTER TABLE "agentic_db_memberships_public".org_admin_grants 
  ADD CONSTRAINT org_admin_grants_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

