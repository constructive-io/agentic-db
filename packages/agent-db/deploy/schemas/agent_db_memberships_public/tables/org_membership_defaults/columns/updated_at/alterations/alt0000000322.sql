-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/updated_at/alterations/alt0000000322
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/updated_at/column


ALTER TABLE agent_db_memberships_public.org_membership_defaults 
  ALTER COLUMN updated_at SET DEFAULT now();

