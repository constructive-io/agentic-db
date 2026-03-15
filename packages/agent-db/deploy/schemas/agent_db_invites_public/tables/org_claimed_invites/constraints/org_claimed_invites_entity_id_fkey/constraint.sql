-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/constraints/org_claimed_invites_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/table


ALTER TABLE agent_db_invites_public.org_claimed_invites 
  ADD CONSTRAINT org_claimed_invites_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agent_db_users_public.users (id) 
    ON DELETE CASCADE;

