-- Deploy: schemas/agentic_db_app_public/tables/tags/columns/created_at/alterations/alt0000000159
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/columns/created_at/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


COMMENT ON COLUMN agentic_db_app_public.tags.created_at IS 'Timestamp when this record was created';

