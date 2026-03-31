-- Revert: schemas/agentic_db_invites_public/tables/org_claimed_invites/policies/enable_row_level_security


ALTER TABLE agentic_db_invites_public.org_claimed_invites 
  DISABLE ROW LEVEL SECURITY;


