-- Deploy: schemas/agentic_db_limits_public/tables/app_limits/indexes/app_limits_actor_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limits/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_limits_public/tables/app_limits/columns/actor_id/column


CREATE INDEX app_limits_actor_id_idx ON agentic_db_limits_public.app_limits USING BTREE ( actor_id );

