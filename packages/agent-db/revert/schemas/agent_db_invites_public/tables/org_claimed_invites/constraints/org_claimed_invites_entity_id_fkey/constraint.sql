-- Revert: schemas/agent_db_invites_public/tables/org_claimed_invites/constraints/org_claimed_invites_entity_id_fkey/constraint


ALTER TABLE agent_db_invites_public.org_claimed_invites 
  DROP CONSTRAINT org_claimed_invites_entity_id_fkey;


