-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table


ALTER TABLE "agent_db_invites_public".org_invites 
  ADD COLUMN created_at timestamptz;

