-- Revert: schemas/agentic_db_invites_public/tables/invites/policies/enable_row_level_security


ALTER TABLE agentic_db_invites_public.invites 
  DISABLE ROW LEVEL SECURITY;


