-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/updated_at/alterations/alt0000000022
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/updated_at/column


COMMENT ON COLUMN agentic_db_app_public.contacts.updated_at IS 'Timestamp when this record was last updated';

