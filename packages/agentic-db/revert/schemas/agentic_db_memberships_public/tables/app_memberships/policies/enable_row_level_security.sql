-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/policies/enable_row_level_security


ALTER TABLE agentic_db_memberships_public.app_memberships 
  DISABLE ROW LEVEL SECURITY;


