-- Revert: schemas/agentic_db_memberships_public/tables/app_admin_grants/policies/enable_row_level_security


ALTER TABLE agentic_db_memberships_public.app_admin_grants 
  DISABLE ROW LEVEL SECURITY;


