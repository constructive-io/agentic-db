-- Deploy: schemas/agentic_db_limits_public/tables/app_limit_defaults/columns/name/alterations/alt0000000905
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limit_defaults/columns/name/column


COMMENT ON COLUMN "agentic_db_limits_public".app_limit_defaults.name IS 'Name identifier of the limit this default applies to';

