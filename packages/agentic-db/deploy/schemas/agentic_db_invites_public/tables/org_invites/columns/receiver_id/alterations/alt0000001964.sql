-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/receiver_id/alterations/alt0000001964
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/receiver_id/column


COMMENT ON COLUMN agentic_db_invites_public.org_invites.receiver_id IS E'User ID of the intended recipient, if targeting a specific user';

