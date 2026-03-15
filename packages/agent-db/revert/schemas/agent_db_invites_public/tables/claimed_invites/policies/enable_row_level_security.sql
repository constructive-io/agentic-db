-- Revert: schemas/agent_db_invites_public/tables/claimed_invites/policies/enable_row_level_security


ALTER TABLE agent_db_invites_public.claimed_invites 
  DISABLE ROW LEVEL SECURITY;


