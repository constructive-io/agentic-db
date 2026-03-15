-- Deploy: schemas/agent_db_status_public/tables/app_achievements/indexes/app_achievements_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_achievements/table
-- requires: schemas/agent_db_status_public/tables/app_achievements/columns/created_at/column


CREATE INDEX app_achievements_created_at_idx ON "agent_db_status_public".app_achievements ( created_at );

