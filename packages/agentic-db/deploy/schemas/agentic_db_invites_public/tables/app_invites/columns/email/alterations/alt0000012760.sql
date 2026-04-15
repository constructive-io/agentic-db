-- Deploy: schemas/agentic_db_invites_public/tables/app_invites/columns/email/alterations/alt0000012760
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/app_invites/columns/email/column


COMMENT ON COLUMN agentic_db_invites_public.app_invites.email IS 'Email address of the invited recipient';

