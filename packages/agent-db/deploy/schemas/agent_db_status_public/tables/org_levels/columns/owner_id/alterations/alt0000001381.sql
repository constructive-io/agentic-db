-- Deploy: schemas/agent_db_status_public/tables/org_levels/columns/owner_id/alterations/alt0000001381
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_levels/columns/owner_id/column


COMMENT ON COLUMN "agent_db_status_public".org_levels.owner_id IS E'Optional owner (actor) who created or manages this level';

