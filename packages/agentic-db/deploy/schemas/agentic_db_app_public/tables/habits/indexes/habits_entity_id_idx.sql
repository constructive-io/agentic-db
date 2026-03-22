-- Deploy: schemas/agentic_db_app_public/tables/habits/indexes/habits_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/goals/triggers/goals_enqueue_embedding_update_tg


CREATE INDEX habits_entity_id_idx ON "agentic_db_app_public".habits USING BTREE ( entity_id );

