-- Revert: schemas/agent_db_invites_public/tables/invites/constraints/invites_pkey/constraint


ALTER TABLE agent_db_invites_public.invites 
  DROP CONSTRAINT invites_pkey;


