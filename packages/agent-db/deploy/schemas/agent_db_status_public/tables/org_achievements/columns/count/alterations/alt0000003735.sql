-- Deploy: schemas/agent_db_status_public/tables/org_achievements/columns/count/alterations/alt0000003735
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/columns/count/column


COMMENT ON COLUMN "agent_db_status_public".org_achievements.count IS 'Cumulative count of completed steps toward this requirement';

