-- Deploy: schemas/agentic_db_app_public/tables/goals/indexes/goals_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/skills/columns/intent_trigger/column


CREATE INDEX goals_entity_id_idx ON "agentic_db_app_public".goals USING BTREE ( entity_id );

