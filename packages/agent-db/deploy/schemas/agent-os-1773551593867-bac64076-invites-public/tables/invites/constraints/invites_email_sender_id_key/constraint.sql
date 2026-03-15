-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/constraints/invites_email_sender_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/table


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  ADD CONSTRAINT invites_email_sender_id_key 
    UNIQUE (email, sender_id);

