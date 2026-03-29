-- Deploy: schemas/agentic_db_limits_public/tables/app_limit_defaults/columns/max/alterations/alt0000002592
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limit_defaults/columns/max/column


COMMENT ON COLUMN agentic_db_limits_public.app_limit_defaults.max IS 'Default maximum usage allowed for this limit';

