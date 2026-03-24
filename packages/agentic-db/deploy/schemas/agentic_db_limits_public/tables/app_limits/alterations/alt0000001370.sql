-- Deploy: schemas/agentic_db_limits_public/tables/app_limits/alterations/alt0000001370
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limits/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_limits_public.app_limits IS E'Tracks per-actor usage counts against configurable maximum limits';

