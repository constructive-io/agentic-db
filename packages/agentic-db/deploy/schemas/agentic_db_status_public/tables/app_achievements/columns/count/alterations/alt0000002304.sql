-- Deploy: schemas/agentic_db_status_public/tables/app_achievements/columns/count/alterations/alt0000002304
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_achievements/columns/count/column


COMMENT ON COLUMN agentic_db_status_public.app_achievements.count IS 'Cumulative count of completed steps toward this requirement';

