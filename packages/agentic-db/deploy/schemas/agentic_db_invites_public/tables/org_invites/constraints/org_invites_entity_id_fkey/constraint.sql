-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/constraints/org_invites_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table


ALTER TABLE agentic_db_invites_public.org_invites 
  ADD CONSTRAINT org_invites_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

