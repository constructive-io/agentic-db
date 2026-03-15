-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/constraints/org_invites_email_sender_id_entity_id_key/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  DROP CONSTRAINT org_invites_email_sender_id_entity_id_key;


