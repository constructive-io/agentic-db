-- Revert: schemas/agent_db_invites_public/tables/org_invites/constraints/org_invites_email_sender_id_entity_id_key/constraint


ALTER TABLE agent_db_invites_public.org_invites 
  DROP CONSTRAINT org_invites_email_sender_id_entity_id_key;


