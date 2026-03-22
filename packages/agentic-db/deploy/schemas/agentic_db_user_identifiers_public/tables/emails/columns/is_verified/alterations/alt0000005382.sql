-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/columns/is_verified/alterations/alt0000005382
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/columns/is_verified/column


COMMENT ON COLUMN agentic_db_user_identifiers_public.emails.is_verified IS 'Whether the email address has been verified via confirmation link';

