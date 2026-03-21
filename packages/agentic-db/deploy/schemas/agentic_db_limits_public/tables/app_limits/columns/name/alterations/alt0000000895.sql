-- Deploy: schemas/agentic_db_limits_public/tables/app_limits/columns/name/alterations/alt0000000895
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limits/columns/name/column


COMMENT ON COLUMN "agentic_db_limits_public".app_limits.name IS 'Name identifier of the limit being tracked';

