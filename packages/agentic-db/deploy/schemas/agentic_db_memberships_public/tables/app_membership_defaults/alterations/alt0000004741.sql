-- Deploy: schemas/agentic_db_memberships_public/tables/app_membership_defaults/alterations/alt0000004741
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_membership_defaults/table


ALTER TABLE agentic_db_memberships_public.app_membership_defaults 
  DISABLE ROW LEVEL SECURITY;

