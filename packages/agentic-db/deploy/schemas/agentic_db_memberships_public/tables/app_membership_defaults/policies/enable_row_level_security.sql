-- Deploy: schemas/agentic_db_memberships_public/tables/app_membership_defaults/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/app_membership_defaults/table


ALTER TABLE agentic_db_memberships_public.app_membership_defaults 
  ENABLE ROW LEVEL SECURITY;

