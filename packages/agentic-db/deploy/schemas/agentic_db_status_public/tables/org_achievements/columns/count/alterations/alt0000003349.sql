-- Deploy: schemas/agentic_db_status_public/tables/org_achievements/columns/count/alterations/alt0000003349
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/columns/count/column


COMMENT ON COLUMN agentic_db_status_public.org_achievements.count IS 'Cumulative count of completed steps toward this requirement';

