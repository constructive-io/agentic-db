-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/table


ALTER TABLE "agent_db_invites_public".org_claimed_invites 
  ADD COLUMN updated_at timestamptz;

