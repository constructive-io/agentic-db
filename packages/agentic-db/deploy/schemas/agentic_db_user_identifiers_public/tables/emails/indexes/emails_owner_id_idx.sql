-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/indexes/emails_owner_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/columns/owner_id/column


CREATE INDEX emails_owner_id_idx ON agentic_db_user_identifiers_public.emails USING BTREE ( owner_id );

