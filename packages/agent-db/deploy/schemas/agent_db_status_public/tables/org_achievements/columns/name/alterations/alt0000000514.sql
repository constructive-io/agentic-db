-- Deploy: schemas/agent_db_status_public/tables/org_achievements/columns/name/alterations/alt0000000514
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/columns/name/column


COMMENT ON COLUMN agent_db_status_public.org_achievements.name IS 'Name identifier of the level requirement being tracked';

