-- Deploy: schemas/agent_db_status_public/tables/org_achievements/columns/count/alterations/alt0000000517
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/columns/count/column


COMMENT ON COLUMN agent_db_status_public.org_achievements.count IS 'Cumulative count of completed steps toward this requirement';

