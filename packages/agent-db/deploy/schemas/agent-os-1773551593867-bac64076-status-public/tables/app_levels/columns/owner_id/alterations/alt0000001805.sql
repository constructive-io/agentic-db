-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/columns/owner_id/alterations/alt0000001805
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/columns/owner_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-status-public".app_levels.owner_id IS E'Optional owner (actor) who created or manages this level';

