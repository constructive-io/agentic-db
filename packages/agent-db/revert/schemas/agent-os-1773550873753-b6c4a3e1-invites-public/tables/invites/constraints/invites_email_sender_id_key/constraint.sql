-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/constraints/invites_email_sender_id_key/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".invites 
  DROP CONSTRAINT invites_email_sender_id_key;


