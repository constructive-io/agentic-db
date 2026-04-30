-- Deploy: schemas/agentic_db_app_public/tables/events/columns/created_at/alterations/alt0000000074
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/events/columns/created_at/column


COMMENT ON COLUMN agentic_db_app_public.events.created_at IS 'Timestamp when this record was created';

