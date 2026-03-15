-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/created_at/alterations/alt0000002025
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/created_at/column


ALTER TABLE "agent_db_memberships_public".org_membership_defaults 
  ALTER COLUMN created_at SET DEFAULT now();

