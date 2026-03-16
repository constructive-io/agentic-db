-- Deploy: schemas/agentic_db_invites_public/tables/claimed_invites/columns/data/alterations/alt0000000783
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/columns/data/column


COMMENT ON COLUMN "agentic_db_invites_public".claimed_invites.data IS 'Optional JSON payload captured at the time the invite was claimed';

