-- Deploy: schemas/agent_db_status_public/tables/app_achievements/columns/count/alterations/alt0000001889
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_achievements/columns/count/column


COMMENT ON COLUMN "agent_db_status_public".app_achievements.count IS 'Cumulative count of completed steps toward this requirement';

