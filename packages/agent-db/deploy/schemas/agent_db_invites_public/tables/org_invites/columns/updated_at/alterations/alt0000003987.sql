-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/updated_at/alterations/alt0000003987
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/updated_at/column


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN updated_at SET DEFAULT now();

