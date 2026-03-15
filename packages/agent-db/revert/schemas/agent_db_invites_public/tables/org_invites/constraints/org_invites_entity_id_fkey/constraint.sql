-- Revert: schemas/agent_db_invites_public/tables/org_invites/constraints/org_invites_entity_id_fkey/constraint


ALTER TABLE agent_db_invites_public.org_invites 
  DROP CONSTRAINT org_invites_entity_id_fkey;


