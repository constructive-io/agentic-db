-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/constraints/invites_email_sender_id_key/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  DROP CONSTRAINT invites_email_sender_id_key;


