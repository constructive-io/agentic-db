-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/entity_id/alterations/alt0000004036
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/entity_id/column


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN entity_id SET NOT NULL;

