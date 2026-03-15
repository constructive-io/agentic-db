-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/count/alterations/alt0000001794
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/count/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-status-public".app_achievements.count IS 'Cumulative count of completed steps toward this requirement';

