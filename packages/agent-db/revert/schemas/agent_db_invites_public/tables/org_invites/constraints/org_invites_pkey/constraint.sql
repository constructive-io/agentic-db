-- Revert: schemas/agent_db_invites_public/tables/org_invites/constraints/org_invites_pkey/constraint


ALTER TABLE agent_db_invites_public.org_invites 
  DROP CONSTRAINT org_invites_pkey;


