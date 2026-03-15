-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_levels/columns/owner_id/alterations/alt0000000196
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_levels/columns/owner_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-status-public".app_levels.owner_id IS E'Optional owner (actor) who created or manages this level';

