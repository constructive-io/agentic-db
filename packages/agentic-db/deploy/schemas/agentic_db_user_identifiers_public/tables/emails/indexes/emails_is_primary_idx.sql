-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/indexes/emails_is_primary_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/columns/owner_id/column
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/columns/is_primary/column


CREATE UNIQUE INDEX emails_is_primary_idx ON agentic_db_user_identifiers_public.emails ( is_primary, owner_id ) WHERE is_primary IS TRUE;

