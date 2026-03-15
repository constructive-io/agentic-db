-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table


ALTER TABLE "agent_db_memberships_public".org_membership_defaults 
  ADD COLUMN updated_at timestamptz;

