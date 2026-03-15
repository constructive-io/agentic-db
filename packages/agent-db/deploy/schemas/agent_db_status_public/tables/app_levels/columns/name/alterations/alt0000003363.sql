-- Deploy: schemas/agent_db_status_public/tables/app_levels/columns/name/alterations/alt0000003363
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_levels/columns/name/column


COMMENT ON COLUMN "agent_db_status_public".app_levels.name IS 'Unique name of the level';

