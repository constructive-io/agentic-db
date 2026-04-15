-- Deploy: schemas/agentic_db_invites_public/tables/app_invites/columns/sender_id/alterations/alt0000012763
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/app_invites/columns/sender_id/column


COMMENT ON COLUMN agentic_db_invites_public.app_invites.sender_id IS 'User ID of the member who sent this invitation';

