-- Deploy: schemas/agent_db_status_public/tables/app_levels/columns/owner_id/alterations/alt0000001900
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_levels/columns/owner_id/column


COMMENT ON COLUMN "agent_db_status_public".app_levels.owner_id IS E'Optional owner (actor) who created or manages this level';

