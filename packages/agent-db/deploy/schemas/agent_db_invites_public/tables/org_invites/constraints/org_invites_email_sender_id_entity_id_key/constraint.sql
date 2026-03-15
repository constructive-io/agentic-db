-- Deploy: schemas/agent_db_invites_public/tables/org_invites/constraints/org_invites_email_sender_id_entity_id_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table


ALTER TABLE agent_db_invites_public.org_invites 
  ADD CONSTRAINT org_invites_email_sender_id_entity_id_key 
    UNIQUE (email, sender_id, entity_id);

