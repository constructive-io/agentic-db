-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/data/alterations/alt0000004030
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/data/column


COMMENT ON COLUMN "agent_db_invites_public".org_invites.data IS 'Optional JSON payload of additional invite metadata';

