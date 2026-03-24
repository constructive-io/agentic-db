-- Deploy: schemas/agentic_db_limits_public/tables/app_limit_defaults/alterations/alt0000001379
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limit_defaults/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_limits_public.app_limit_defaults IS E'Default maximum values for each named limit, applied when no per-actor override exists';

