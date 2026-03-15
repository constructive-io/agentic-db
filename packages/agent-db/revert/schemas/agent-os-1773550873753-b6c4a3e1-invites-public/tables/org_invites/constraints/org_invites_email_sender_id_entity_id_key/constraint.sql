-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/constraints/org_invites_email_sender_id_entity_id_key/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_invites 
  DROP CONSTRAINT org_invites_email_sender_id_entity_id_key;


