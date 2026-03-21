-- Deploy: schemas/agentic_db_status_public/tables/app_steps/indexes/app_steps_actor_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_steps/table
-- requires: schemas/agentic_db_status_public/tables/app_steps/columns/actor_id/column


CREATE INDEX app_steps_actor_id_idx ON agentic_db_status_public.app_steps USING BTREE ( actor_id );

