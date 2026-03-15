-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/constraints/org_memberships_actor_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ADD CONSTRAINT org_memberships_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

