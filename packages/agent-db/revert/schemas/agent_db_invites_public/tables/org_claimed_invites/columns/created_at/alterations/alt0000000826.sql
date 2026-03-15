-- Revert: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/created_at/alterations/alt0000000826


ALTER TABLE agent_db_invites_public.org_claimed_invites 
  ALTER COLUMN created_at DROP DEFAULT;


