-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/data/alterations/alt0000001625
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/columns/data/column


COMMENT ON COLUMN "agent_db_invites_public".invites.data IS 'Optional JSON payload of additional invite metadata';

