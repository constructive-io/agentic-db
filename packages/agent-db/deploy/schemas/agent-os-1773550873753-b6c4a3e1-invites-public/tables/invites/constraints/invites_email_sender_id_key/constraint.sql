-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/constraints/invites_email_sender_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".invites 
  ADD CONSTRAINT invites_email_sender_id_key 
    UNIQUE (email, sender_id);

