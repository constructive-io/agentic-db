-- Deploy: schemas/agentic_db_status_public/tables/app_levels/columns/description/alterations/alt0000001518
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_status_public/tables/app_levels/columns/description/column


COMMENT ON COLUMN agentic_db_status_public.app_levels.description IS E'Human-readable description of what this level represents';

