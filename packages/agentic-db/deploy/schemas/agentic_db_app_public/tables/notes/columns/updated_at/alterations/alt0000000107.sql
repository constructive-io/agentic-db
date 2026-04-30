-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/updated_at/alterations/alt0000000107
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


COMMENT ON COLUMN agentic_db_app_public.notes.updated_at IS 'Timestamp when this record was last updated';

