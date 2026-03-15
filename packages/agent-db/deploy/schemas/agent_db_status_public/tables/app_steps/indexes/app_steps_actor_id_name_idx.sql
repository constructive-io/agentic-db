-- Deploy: schemas/agent_db_status_public/tables/app_steps/indexes/app_steps_actor_id_name_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/table
-- requires: schemas/agent_db_status_public/tables/app_steps/columns/name/column
-- requires: schemas/agent_db_status_public/tables/app_steps/columns/actor_id/column


CREATE INDEX app_steps_actor_id_name_idx ON "agent_db_status_public".app_steps USING BTREE ( actor_id, name );

