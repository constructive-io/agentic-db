-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/columns/is_primary/alterations/alt0000003543
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/columns/is_primary/column


COMMENT ON COLUMN agentic_db_user_identifiers_public.emails.is_primary IS E'Whether this is the user''s primary email address';

