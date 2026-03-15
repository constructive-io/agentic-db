-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/is_verified/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table


ALTER TABLE agent_db_memberships_public.app_membership_defaults 
  ADD COLUMN is_verified boolean;

