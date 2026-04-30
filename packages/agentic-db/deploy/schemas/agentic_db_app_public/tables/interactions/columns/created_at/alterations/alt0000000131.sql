-- Deploy: schemas/agentic_db_app_public/tables/interactions/columns/created_at/alterations/alt0000000131
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/created_at/column


COMMENT ON COLUMN agentic_db_app_public.interactions.created_at IS 'Timestamp when this record was created';

