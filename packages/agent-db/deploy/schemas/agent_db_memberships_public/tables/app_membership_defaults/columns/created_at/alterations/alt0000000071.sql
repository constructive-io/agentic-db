-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/created_at/alterations/alt0000000071
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/created_at/column


ALTER TABLE agent_db_memberships_public.app_membership_defaults 
  ALTER COLUMN created_at SET DEFAULT now();

