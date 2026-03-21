-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/data/alterations/alt0000003604
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/data/column


COMMENT ON COLUMN agentic_db_invites_public.invites.data IS 'Optional JSON payload of additional invite metadata';

