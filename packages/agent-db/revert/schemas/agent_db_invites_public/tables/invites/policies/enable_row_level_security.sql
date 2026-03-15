-- Revert: schemas/agent_db_invites_public/tables/invites/policies/enable_row_level_security


ALTER TABLE agent_db_invites_public.invites 
  DISABLE ROW LEVEL SECURITY;


