-- Revert: schemas/agentic_db_invites_public/tables/app_invites/policies/enable_row_level_security


ALTER TABLE agentic_db_invites_public.app_invites 
  DISABLE ROW LEVEL SECURITY;


