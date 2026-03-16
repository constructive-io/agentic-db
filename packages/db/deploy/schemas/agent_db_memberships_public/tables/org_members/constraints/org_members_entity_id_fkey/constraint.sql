-- Deploy: schemas/agent_db_memberships_public/tables/org_members/constraints/org_members_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_memberships_public/tables/org_members/table


ALTER TABLE "agent_db_memberships_public".org_members 
  ADD CONSTRAINT org_members_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

