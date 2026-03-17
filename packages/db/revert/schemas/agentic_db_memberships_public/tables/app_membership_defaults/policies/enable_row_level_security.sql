-- Revert: schemas/agentic_db_memberships_public/tables/app_membership_defaults/policies/enable_row_level_security


ALTER TABLE "agentic_db_memberships_public".app_membership_defaults 
  DISABLE ROW LEVEL SECURITY;


