-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_steps/indexes/app_steps_actor_id_name_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_steps/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_steps/columns/name/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_steps/columns/actor_id/column


CREATE INDEX app_steps_actor_id_name_idx ON "agent-os-1773550873753-b6c4a3e1-status-public".app_steps USING BTREE ( actor_id, name );

