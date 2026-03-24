-- Deploy: schemas/agentic_db_status_public/tables/app_levels/columns/name/alterations/alt0000001517
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_status_public/tables/app_levels/columns/name/column


COMMENT ON COLUMN agentic_db_status_public.app_levels.name IS 'Unique name of the level';

